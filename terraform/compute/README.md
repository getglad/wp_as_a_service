<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_digitalocean"></a> [digitalocean](#requirement\_digitalocean) | ~> 2.28 |
| <a name="requirement_random"></a> [random](#requirement\_random) | ~>3.5 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_digitalocean"></a> [digitalocean](#provider\_digitalocean) | ~> 2.28 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [digitalocean_app.wpaas](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/app) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_access_key"></a> [bucket\_access\_key](#input\_bucket\_access\_key) | n/a | `string` | n/a | yes |
| <a name="input_bucket_access_secret"></a> [bucket\_access\_secret](#input\_bucket\_access\_secret) | n/a | `string` | n/a | yes |
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | n/a | `string` | n/a | yes |
| <a name="input_bucket_region"></a> [bucket\_region](#input\_bucket\_region) | n/a | `string` | n/a | yes |
| <a name="input_do_region"></a> [do\_region](#input\_do\_region) | n/a | `string` | n/a | yes |
| <a name="input_image_name"></a> [image\_name](#input\_image\_name) | n/a | `string` | n/a | yes |
| <a name="input_image_tag"></a> [image\_tag](#input\_image\_tag) | n/a | `string` | n/a | yes |
| <a name="input_instance_size"></a> [instance\_size](#input\_instance\_size) | n/a | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | n/a | `string` | n/a | yes |
| <a name="input_public_url"></a> [public\_url](#input\_public\_url) | n/a | `string` | n/a | yes |
| <a name="input_wp_auth_key"></a> [wp\_auth\_key](#input\_wp\_auth\_key) | n/a | `string` | n/a | yes |
| <a name="input_wp_auth_salt"></a> [wp\_auth\_salt](#input\_wp\_auth\_salt) | n/a | `string` | n/a | yes |
| <a name="input_wp_db_host"></a> [wp\_db\_host](#input\_wp\_db\_host) | n/a | `string` | n/a | yes |
| <a name="input_wp_db_name"></a> [wp\_db\_name](#input\_wp\_db\_name) | n/a | `string` | n/a | yes |
| <a name="input_wp_db_pw"></a> [wp\_db\_pw](#input\_wp\_db\_pw) | n/a | `string` | n/a | yes |
| <a name="input_wp_db_table_prefix"></a> [wp\_db\_table\_prefix](#input\_wp\_db\_table\_prefix) | n/a | `string` | n/a | yes |
| <a name="input_wp_db_user"></a> [wp\_db\_user](#input\_wp\_db\_user) | n/a | `string` | n/a | yes |
| <a name="input_wp_logged_in_key"></a> [wp\_logged\_in\_key](#input\_wp\_logged\_in\_key) | n/a | `string` | n/a | yes |
| <a name="input_wp_logged_in_salt"></a> [wp\_logged\_in\_salt](#input\_wp\_logged\_in\_salt) | n/a | `string` | n/a | yes |
| <a name="input_wp_nonce_key"></a> [wp\_nonce\_key](#input\_wp\_nonce\_key) | n/a | `string` | n/a | yes |
| <a name="input_wp_nonce_salt"></a> [wp\_nonce\_salt](#input\_wp\_nonce\_salt) | n/a | `string` | n/a | yes |
| <a name="input_wp_secure_auth_key"></a> [wp\_secure\_auth\_key](#input\_wp\_secure\_auth\_key) | n/a | `string` | n/a | yes |
| <a name="input_wp_secure_auth_salt"></a> [wp\_secure\_auth\_salt](#input\_wp\_secure\_auth\_salt) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_endpoint"></a> [endpoint](#output\_endpoint) | n/a |
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_urn"></a> [urn](#output\_urn) | n/a |
<!-- END_TF_DOCS -->