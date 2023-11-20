###
# General
###

variable "project_name" {
  type = string
}

variable "do_region" {
  type = string
}

###
# Container
###

variable "instance_size" {
  type = string
}

variable "image_name" {
  type = string
}

variable "image_tag" {
  type = string
}

variable "public_url" {
  type = string
}

###
# Wordpress Multisite
###

variable "wp_allow_multisite" {
  type    = bool
  default = false
}

variable "wp_domain_current_site" {
  type        = string
  default     = ""
  description = "The primary hostname/URL for the multisite deployment"
}

variable "wp_home" {
  type    = string
  default = ""
}

variable "wp_siteurl" {
  type    = string
  default = ""
}

###
# App
###

variable "wp_db_host" {
  type      = string
  sensitive = true
}

variable "wp_db_user" {
  type      = string
  sensitive = true
}

variable "wp_db_pw" {
  type      = string
  sensitive = true
}

variable "wp_db_name" {
  type = string
}

variable "wp_db_table_prefix" {
  type = string
}

variable "wp_auth_key" {
  type      = string
  sensitive = true
}

variable "wp_auth_salt" {
  type      = string
  sensitive = true
}

variable "wp_secure_auth_key" {
  type      = string
  sensitive = true
}

variable "wp_secure_auth_salt" {
  type      = string
  sensitive = true
}

variable "wp_logged_in_key" {
  type      = string
  sensitive = true
}

variable "wp_logged_in_salt" {
  type      = string
  sensitive = true
}

variable "wp_nonce_key" {
  type      = string
  sensitive = true
}

variable "wp_nonce_salt" {
  type      = string
  sensitive = true
}

###
# Storage
###

variable "bucket_access_key" {
  type      = string
  sensitive = true
}

variable "bucket_access_secret" {
  type      = string
  sensitive = true
}

variable "bucket_name" {
  type = string
}

variable "bucket_region" {
  type = string
}
