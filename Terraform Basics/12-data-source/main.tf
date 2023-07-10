data "local_file" "name" {
  filename = "sample1.txt"
}

output name1 {
  value = data.local_file.name.content
}

# Here we use the Data block at the top, to call a local file and give its name.
# Then we create an output block, that reads the content from that data block, local_file provider, with a unique identifier of name.
