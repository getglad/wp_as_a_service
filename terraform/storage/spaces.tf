resource "random_pet" "project" {}

resource "digitalocean_spaces_bucket" "wpaas" {
  name   = random_pet.project
  region = "nyc3"

  versioning {
    enabled = true
  }
}
