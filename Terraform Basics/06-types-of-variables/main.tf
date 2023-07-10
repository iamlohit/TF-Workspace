# With variables, we can make our main.tf script reuseable, by not hard coding the values of the argument,
# & keeping the vlaues in a seperate file called variables.tf and call these variables inside the main.tf script.

# Taking our Hello World example and modifying it below:

# Numbered indexing can be used for list & tuples.
# resource local_file sample_res {
#     filename = var.filename1
#     content = var.content1[0]
# }

# Dictionary Indexing is done with the name of the key used in dictionary.
resource local_file sample_res {
    filename = var.filename1
    content = var.content1["name"]
}