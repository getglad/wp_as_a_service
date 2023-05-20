resource "digitalocean_project" "wpaas" {
  name = local.project_name.name
}

resource "digitalocean_project_resources" "wpaas" {
  project = digitalocean_project.wpaas.id
  resources = [
    module.compute.urn
  ]
}
