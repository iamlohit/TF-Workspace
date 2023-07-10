resource random_string rstring {
    length = 20
}

output rand_string {
    value = random_string.rstring.id
}

# To see the value of the output implicitly, it will be visible during terraform apply.
# Doing this explicitly with Terraform CLI would be done by: 

# terraform output rand_string
# "}y=C<pxFO0jr[ggT$9rx"