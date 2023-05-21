###
# General
###

variable "project_name" {
  default = null
  type    = string
}

variable "do_region" {
  description = "Digital Ocean Deployment Region for everything else."
  default     = "nyc3"
  type        = string
}


variable "do_region_app" {
  description = "Digital Ocean Deployment Region for the App"
  default     = "nyc"
  type        = string
}

###
# Deployment Auth Values
###

variable "do_token" {
  description = "Digital Ocean Access Token"
  type        = string
  sensitive   = true
}

variable "spaces_key" {
  description = "Digital Ocean Spaces Key"
  type        = string
  sensitive   = true
}

variable "spaces_secret" {
  description = "Digital Ocean Spaces Secret"
  type        = string
  sensitive   = true
}

###
# Database
###

variable "existing_db_name" {
  default     = null
  description = "When using a preexisting database"
  type        = string
}


###
# Container Image
###

variable "image_subscription_tier" {
  description = "Digital Ocean Container Registry Plan Tier"
  default     = "starter"
  type        = string
}

###
# Application
###

variable "instance_size" {
  description = "The size for the Digital Ocean App"
  default     = "basic-xxs"
}

variable "image_tag" {
  default = "latest"
  type    = string
}

variable "public_url" {
  default = null
  type    = string
}

###
# WP Configs
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
