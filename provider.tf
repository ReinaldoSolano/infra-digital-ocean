terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.33.0" # ou a versão mais recente disponível
    }
  }
}

provider "digitalocean" {
  token = var.do_token
}