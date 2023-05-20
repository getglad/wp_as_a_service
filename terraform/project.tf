resource "digitalocean_project" "wpaas" {
  name = local.project_name
}

resource "digitalocean_project_resources" "wpaas" {
  project = digitalocean_project.wpaas.id
  resources = [
    digitalocean_app.wpaas.urn
  ]
}
