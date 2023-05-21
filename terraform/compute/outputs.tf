output "endpoint" {
  value = digitalocean_app.wpaas.default_ingress
}

output "id" {
  value = digitalocean_app.wpaas.id
}

output "urn" {
  value = digitalocean_app.wpaas.urn
}
