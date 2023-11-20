terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.32"
    }

    random = {
      source  = "hashicorp/random"
      version = "~>3.5"
    }
  }
}
