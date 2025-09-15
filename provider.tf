terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }

  # backend "pg" {
  #   conn_str = "postgres://postgres:870441@192.168.0.6:5432/terraform"
  # }
}

provider "digitalocean" {}