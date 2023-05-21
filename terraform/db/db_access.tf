resource "digitalocean_database_firewall" "wpaas" {
  cluster_id = data.digitalocean_database_cluster.existing.id

  rule {
    type  = "app"
    value = digitalocean_droplet.web.id
  }
}
