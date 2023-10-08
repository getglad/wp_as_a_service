resource "random_pet" "spaces" {}

resource "digitalocean_spaces_bucket" "wpaas" {
  name   = "wpaas-${random_pet.spaces.id}"
  region = "nyc3"

  versioning {
    enabled = true
  }
}
