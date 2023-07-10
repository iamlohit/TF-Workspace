resource local_file file_res {
    filename = "implicit.txt"
    content = "This is random String from RP : ${random_string.rstring.id}"
    depends_on = [ random_string.rstring ]
}

resource random_string rstring {
    length = 10
}

# This is a demo of an IMPLICIT dependency.
# Here we call the value in "id" from the random_string provider inside the local_file provider.
# Note: that HCL implicitly finds the dependency that to put the id value in local_file content it needs to run the random_string provider first.

# Terraform Apply output:
    # random_string.rstring: Creating...
    # random_string.rstring: Creation complete after 0s [id=0sNii[L#:g]
    # local_file.file_res: Creating...
    # local_file.file_res: Creation complete after 0s [id=0ea78203fc5ee3dc82fe721852f07157183722e7]

# Explicit Dependency:
    # Here we explicity define the dependency with the "depends-on" argument in the local_file provider.

# Note:
    # Since we ran Terraform Apply without explicitly defining the dependency first,
    # after defining explicity dependency and hitting Terraform plan & apply changes nothing since it does the same thing.
    # Terraform Output
        # random_string.rstring: Refreshing state... [id=0sNii[L#:g]
        # local_file.file_res: Refreshing state... [id=0ea78203fc5ee3dc82fe721852f07157183722e7]
        # No changes. Your infrastructure matches the configuration.
        # Terraform has compared your real infrastructure against your configuration and found no differences, so no changes are needed.
        # Apply complete! Resources: 0 added, 0 changed, 0 destroyed.