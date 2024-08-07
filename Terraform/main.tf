terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_kubernetes_cluster" "devops-cluster" {
  name    = "devops-cluster"
  region  = var.region
  version = "1.30.2-do.0" # Specify the desired Kubernetes version

  node_pool {
    name               = "devops-node"
    size               = var.node_size
    node_count         = 1
    auto_scale         = true
    min_nodes          = 1
    max_nodes          = 2
    tags               = ["devops"]
  }

  tags = ["devops"]
}

resource "digitalocean_kubernetes_node_pool" "devops-cluster" {
  cluster_id = digitalocean_kubernetes_cluster.devops-cluster.id
  name       = "dev-node"

  node_count = 2
  size       = var.node_size

  auto_scale = true
  min_nodes  = 1
  max_nodes  = 2
}

