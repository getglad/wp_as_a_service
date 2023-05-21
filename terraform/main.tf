terraform {
  required_version = "~>1.4"

  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.28"
    }

    random = {
      source  = "hashicorp/random"
      version = "~>3.5"
    }
  }
}

provider "random" {}

provider "digitalocean" {
  token = var.do_token

  spaces_access_id  = var.spaces_key
  spaces_secret_key = var.spaces_secret
}

module "compute" {
  source = "./compute"

  do_region     = var.do_region_app
  instance_size = var.instance_size
  image_name    = module.image.image_name
  image_tag     = var.image_tag
  project_name  = local.project_name
  public_url    = var.public_url

  wp_db_host          = var.wp_db_host
  wp_db_user          = var.wp_db_user
  wp_db_pw            = var.wp_db_pw
  wp_db_name          = var.wp_db_name
  wp_db_table_prefix  = var.wp_db_table_prefix
  wp_auth_key         = var.wp_auth_key
  wp_secure_auth_key  = var.wp_secure_auth_key
  wp_secure_auth_salt = var.wp_secure_auth_salt
  wp_logged_in_key    = var.wp_logged_in_key
  wp_nonce_key        = var.wp_nonce_key
  wp_auth_salt        = var.wp_auth_salt
  wp_logged_in_salt   = var.wp_logged_in_salt
  wp_nonce_salt       = var.wp_nonce_salt
}

module "image" {
  source = "./image"

  do_region         = var.do_region
  project_name      = local.project_name
  subscription_tier = var.image_subscription_tier
}

module "storage" {
  source = "./storage"

  do_region = var.do_region
}

module "database" {
  source = "./db"

  existing_db_name = var.existing_db_name
  wpaas_app_id     = module.compute.id
}
