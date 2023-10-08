locals {
    wp_extra_config_defaults = <<EOT
        define( 'S3_UPLOADS_BUCKET', '${var.bucket_name}' );
        define( 'S3_UPLOADS_REGION', '${var.bucket_region}' );
        define( 'S3_UPLOADS_KEY', '${var.bucket_access_key}' );
        define( 'S3_UPLOADS_SECRET', '${var.bucket_access_secret}' );
        define( 'S3_UPLOADS_BUCKET_URL', 'https://${var.bucket_name}.${var.bucket_region}.digitaloceanspaces.com' );
        define( 'WP_ALLOW_MULTISITE', 'true' );
    EOT
  
    wp_extra_config_multisite = <<EOT
        define( 'MULTISITE', true );
        define( 'SUBDOMAIN_INSTALL', true );
        define( 'DOMAIN_CURRENT_SITE', '${var.wp_domain_current_site}' );
        define( 'PATH_CURRENT_SITE', '/' );
        define( 'SITE_ID_CURRENT_SITE', 1 );
        define( 'BLOG_ID_CURRENT_SITE', 1 );
    EOT

    wp_extra_configs = var.wp_allow_multisite ? "${local.wp_extra_config_defaults} ${local.wp_extra_config_multisite}" : local.wp_extra_config_defaults

}