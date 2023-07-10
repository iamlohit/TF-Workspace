resource local_file sample_res {
    filename = "sample.txt"
    content = "I love Terraform"
}

# All HCL scripts have an extention of .tf
# Resource: This is a block. There are various types of blocks like data etc.
# local_file: This is a resource type/category. This type creates a local file and enters content into it.
# sample_res: Unique identifier for the resource or the name of the resource.  
# Inside the {} are the arguments or attributes and its value, like a key:value pair.

# After writing this config file we need to do the following:
# The following needs to be performed inside the folder where your .tf file exists.

    # terraform Init
        # Initialises working directory locally.
        # It downloads the plugins called.

#         terraform init

# Initializing the backend...

# Initializing provider plugins...
# - Finding latest version of hashicorp/local...
# - Installing hashicorp/local v2.4.0...
# - Installed hashicorp/local v2.4.0 (signed by HashiCorp)

# Terraform has created a lock file .terraform.lock.hcl to record the provider
# selections it made above. Include this file in your version control repository
# so that Terraform can guarantee to make the same selections by default when
# you run "terraform init" in the future.

# Terraform has been successfully initialized!

# You may now begin working with Terraform. Try running "terraform plan" to see
# any changes that are required for your infrastructure. All Terraform commands
# should now work.

# If you ever set or change modules or backend configuration for Terraform,
# rerun this command to reinitialize your working directory. If you forget, other
# commands will detect it and remind you to do so if necessary.
    
    
    
    # terraform plan
        # Creates an execution plan.
        # Does not change any infrastructure, just tells us what will be created, and we can check if it looks good.
    
#     terraform plan

# Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
#   + create

# Terraform will perform the following actions:

#   # local_file.sample_res will be created
#   + resource "local_file" "sample_res" {
#       + content              = "I love Terraform"
#       + content_base64sha256 = (known after apply)
#       + content_base64sha512 = (known after apply)
#       + content_md5          = (known after apply)
#       + content_sha1         = (known after apply)
#       + content_sha256       = (known after apply)
#       + content_sha512       = (known after apply)
#       + directory_permission = "0777"
#       + file_permission      = "0777"
#       + filename             = "sample.txt"
#       + id                   = (known after apply)
#     }

# Plan: 1 to add, 0 to change, 0 to destroy.

# ─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

# Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply" now.
   
   
    
    
    # terraform apply
        # Execute the plan and create the resources using the config file, as per the plan command output.

#         ➤ terraform apply

# Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
#   + create

# Terraform will perform the following actions:

#   # local_file.sample_res will be created
#   + resource "local_file" "sample_res" {
#       + content              = "I love Terraform"
#       + content_base64sha256 = (known after apply)
#       + content_base64sha512 = (known after apply)
#       + content_md5          = (known after apply)
#       + content_sha1         = (known after apply)
#       + content_sha256       = (known after apply)
#       + content_sha512       = (known after apply)
#       + directory_permission = "0777"
#       + file_permission      = "0777"
#       + filename             = "sample.txt"
#       + id                   = (known after apply)
#     }

# Plan: 1 to add, 0 to change, 0 to destroy.

# Do you want to perform these actions?
#   Terraform will perform the actions described above.
#   Only 'yes' will be accepted to approve.

#   Enter a value: yes

# local_file.sample_res: Creating...
# local_file.sample_res: Creation complete after 0s [id=f0702396afaf73d3f0a3d14376a3196589381e01]

# You can read more on the same at [https://developer.hashicorp.com/terraform/intro]
