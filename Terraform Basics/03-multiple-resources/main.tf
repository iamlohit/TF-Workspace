# We can create multiple resources from the same main.tf file rather than having 1 file for every resource.

resource local_file cat_res {
    filename = "cat.txt"
    content = "I adore cat's"
    directory_permission = "0700"
    file_permission      = "0700"
}

resource local_file dog_res {
    filename = "dog.txt"
    content = "I adore dog's"
    directory_permission = "0700"
    file_permission      = "0700"
}