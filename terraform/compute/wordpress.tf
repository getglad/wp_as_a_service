resource "digitalocean_app" "wpaas" {
  spec {
    name   = var.project_name
    region = var.do_region

    dynamic "domain" {
      for_each = var.public_url != null ? [1] : []
      content {
        name = var.public_url
        type = "PRIMARY"
      }
    }

    dynamic "domain" {
      for_each = var.public_url == null ? [] : [1]
      content {
        type = "DEFAULT"
      }
    }

    service {
      http_port          = 80
      instance_count     = 1
      instance_size_slug = var.instance_size
      name               = "wpaas"

      image {
        registry_type = "DOCR"
        repository    = "wpaas"
        tag           = var.image_tag
      }

      routes {
        path = "/"
      }

      env {
        key   = "WORDPRESS_DB_HOST"
        value = var.wp_db_host
        scope = "RUN_TIME"
        type  = "SECRET"
      }

      env {
        key   = "WORDPRESS_DB_USER"
        value = var.wp_db_user
        scope = "RUN_TIME"
        type  = "SECRET"
      }

      env {
        key   = "WORDPRESS_DB_PASSWORD"
        value = var.wp_db_pw
        scope = "RUN_TIME"
        type  = "SECRET"
      }

      env {
        key   = "WORDPRESS_DB_NAME"
        value = var.wp_db_name
        scope = "RUN_TIME"
      }

      env {
        key   = "WORDPRESS_TABLE_PREFIX"
        value = var.wp_db_table_prefix
        scope = "RUN_TIME"
      }

      env {
        key   = "WORDPRESS_AUTH_KEY"
        value = var.wp_auth_key
        scope = "RUN_TIME"
        type  = "SECRET"
      }

      env {
        key   = "WORDPRESS_AUTH_SALT"
        value = var.wp_auth_salt
        scope = "RUN_TIME"
        type  = "SECRET"
      }

      env {
        key   = "WORDPRESS_SECURE_AUTH_KEY"
        value = var.wp_secure_auth_key
        scope = "RUN_TIME"
        type  = "SECRET"
      }

      env {
        key   = "WORDPRESS_SECURE_AUTH_SALT"
        value = var.wp_secure_auth_salt
        scope = "RUN_TIME"
        type  = "SECRET"
      }

      env {
        key   = "WORDPRESS_LOGGED_IN_KEY"
        value = var.wp_logged_in_key
        scope = "RUN_TIME"
        type  = "SECRET"
      }

      env {
        key   = "WORDPRESS_LOGGED_IN_SALT"
        value = var.wp_logged_in_salt
        scope = "RUN_TIME"
        type  = "SECRET"
      }

      env {
        key   = "WORDPRESS_NONCE_KEY"
        value = var.wp_nonce_key
        scope = "RUN_TIME"
        type  = "SECRET"
      }

      env {
        key   = "WORDPRESS_NONCE_SALT"
        value = var.wp_nonce_salt
        scope = "RUN_TIME"
        type  = "SECRET"
      }

      env {
        key   = "WORDPRESS_CONFIG_EXTRA"
        value = <<EOT
          define( 'S3_UPLOADS_BUCKET', '${var.bucket_name}' );
          define( 'S3_UPLOADS_REGION', '${var.bucket_region}' );
          define( 'S3_UPLOADS_KEY', '${var.bucket_access_key}' );
          define( 'S3_UPLOADS_SECRET', '${var.bucket_access_secret}' );
          define( 'S3_UPLOADS_BUCKET_URL', 'https://${var.bucket_name}.${var.bucket_region}.digitaloceanspaces.com' );
        EOT
        scope = "RUN_TIME"
        type  = "SECRET"
      }

    }
  }
}
