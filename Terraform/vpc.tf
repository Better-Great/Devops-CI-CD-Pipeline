resource "digitalocean_vpc" "devops-cluster" {
  name   = "devops-vpc"
  region = var.region

  ip_range = "10.10.40.0/24"
}

