resource local_file sample_res {
    filename = "sample_args.txt"
    sensitive_content = "I love Terraform"
    file_permission = "0700"
}

# The thing to note here is that with the sensitive content argument, the value is not displayed in terraform output.

  # local_file.sample_res will be created
#   + resource "local_file" "sample_res" {
#       + content_base64sha256 = (known after apply)
#       + content_base64sha512 = (known after apply)
#       + content_md5          = (known after apply)
#       + content_sha1         = (known after apply)
#       + content_sha256       = (known after apply)
#       + content_sha512       = (known after apply)
#       + directory_permission = "0777"
#       + file_permission      = "0777"
#       + filename             = "sample_args.txt"
#       + id                   = (known after apply)
#       + sensitive_content    = (sensitive value)
#     }
