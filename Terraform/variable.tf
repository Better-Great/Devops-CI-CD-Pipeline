variable "do_token" {
  description = "DigitalOcean API token"
  type        = string
}

variable "region" {
  description = "DigitalOcean region to deploy resources"
  type        = string
  default     = "nyc3"
}

variable "node_size" {
  description = "Size of the Kubernetes worker nodes"
  type        = string
  default     = "s-2vcpu-4gb"
}

