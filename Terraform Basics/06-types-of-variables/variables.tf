variable filename1 {
    type = string
    default = "sample1.txt"
}

# Here we change the content type to be a number with a default value.
# variable content1 {
#     type = number
#     default = 23
# }

# Here we change the content type to be a boolean with a default value.
# variable content1 {
#     type = bool
#     default = true
# }

# Here we change the content type to be a list with a default value.
# You will not be able to assign all elements of a list in the main.tf, you can use the index number to assign a given value.
# variable content1 {
#     type = list(string)
#     default = [ "red", "green", "blue" ]
# }

# Here we change the content type to be a tuple with a default value.
# You will not be able to assign all elements of a tuple in the main.tf, you can use the index number to assign a given value.
# The type will be automatically chosed.
variable content1 {
    type = tuple([ string, bool, number ])
    default = [ "red", true, 23 ]
}