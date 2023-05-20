resource "digitalocean_container_registry" "wpaas" {
  name                   = var.project_name
  region                 = var.do_region
  subscription_tier_slug = var.subscription_tier
}
