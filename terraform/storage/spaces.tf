resource "random_pet" "project" {}

resource "digitalocean_spaces_bucket" "wpaas" {
  name   = random_pet.project.id
  region = "nyc3"

  versioning {
    enabled = true
  }
}
