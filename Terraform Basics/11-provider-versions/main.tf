terraform {
  required_providers {
    local = {
        version = "= 2.3.0"
        source = "hashicorp/local"
    }
  }
}

resource local_file file1 {
    filename = "file1"
    content = "Learning about Provider Versions"
}

# The moment we hit TI, for the first time, we will see the Terraform provider being downloaded.
# What if we want a specific version of the provider to be used.
# Thats where we need to explicitly define it in the tf script.
# Source: [https://letmegooglethat.com/?q=terraform+provider+version+constraint]

# The following operators are valid:

# = (or no operator): Allows only one exact version number. Cannot be combined with other conditions.
# !=: Excludes an exact version number.
# >, >=, <, <=: Comparisons against a specified version, allowing versions for which the comparison is true. "Greater-than" requests newer versions, and "less-than" requests older versions.
# ~>: Allows only the rightmost version component to increment. For example, to allow new patch releases within a specific minor release, use the full version number: ~> 1.0.4 will allow installation of 1.0.5 and 1.0.10 but not 1.1.0. This is usually called the pessimistic constraint operator.

# Terraform Init Output:
    # Initializing the backend...

    #     Initializing provider plugins...
    #     - Finding latest version of hashicorp/local...
    #     - Installing hashicorp/local v2.4.0...
    #     - Installed hashicorp/local v2.4.0 (signed by HashiCorp)

    #     Terraform has created a lock file .terraform.lock.hcl to record the provider
    #     selections it made above. Include this file in your version control repository
    #     so that Terraform can guarantee to make the same selections by default when
    #     you run "terraform init" in the future.

# To change the provider if TI was already initialised, we will need the following command: terraform init -upgrade