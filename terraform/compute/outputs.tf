output "endpoint" {
  value = digitalocean_app.wpaas.default_ingress
}

output "urn" {
  value = digitalocean_app.wpaas.urn
}
