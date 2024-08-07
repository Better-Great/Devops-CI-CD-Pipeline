resource "digitalocean_firewall" "devops-cluster" {
  name    = "devops-firewall"
  droplet_ids = [] 

  inbound_rule {
    protocol   = "tcp"
    port_range = "22" # SSH
    source_addresses = ["0.0.0.0/0"]
  }

  inbound_rule {
    protocol   = "tcp"
    port_range = "80" # HTTP
    source_addresses = ["0.0.0.0/0"]
  }

  inbound_rule {
    protocol   = "tcp"
    port_range = "443" # HTTPS
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol   = "tcp"
    port_range = "53"
    destination_addresses = ["0.0.0.0/0"]
  }
}

