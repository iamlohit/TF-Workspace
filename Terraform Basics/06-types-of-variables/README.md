# If you donot define any default values, here is what will happen:
    1 - Upon running Terraform Apply, it will ask you for the value.      
    2 - You can supply the variable value with TA command like:   terraform apply -var "filename=sample.txt"
    3 - You can set the variable name and its value in an ENV Variable as such:    export TF_VAR_filename=sample.txt
      - and just run the Terrafrom Apply command, and TF will automatically pick up the value from the ENV Variable.

# NOTE: We are not restricted to variables.tf file to input variables. The following are valid places:
    terraform.tfvars
    terraform.tfvars.json
    *.auto.tfvars
    *.auto.tfvars.json

# NOTE: There is a priority of which source is chosen or over ridden. Below is list of Top priority to lowest priority.
    1 - terraform apply -var "filename=sample.txt"
    2 - *.auto.tfvars
    3 - terraform.tfvars
    4 - export TF_VAR_filename=sample.txt