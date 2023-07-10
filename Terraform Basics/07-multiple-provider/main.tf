resource local_file file_res {
    filename = "sample.txt"
    content = "This is HCL"
}

resource random_string rstring {
    length = 10
}

# Here we call the local_file and random_string as Providers in terraform. 