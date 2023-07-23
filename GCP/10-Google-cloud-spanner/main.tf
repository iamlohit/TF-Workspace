# Spanner 101:
#     This is highly available (99.99% availability) and distributed (min. 3 read/write replicas) and horizontally scalable fast SQL database.
#     Here we are going to create a Spanner instance below.

resource "google_spanner_instance" "spanner_tf" {
  name = "spannertf"
  config = "regional-asia-south1"
  display_name = "Spanner from TF"
  num_nodes = 1
  labels = {
    "env" = "learningtf" 
  }
}