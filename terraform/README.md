<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~>1.4 |
| <a name="requirement_digitalocean"></a> [digitalocean](#requirement\_digitalocean) | ~> 2.28 |
| <a name="requirement_random"></a> [random](#requirement\_random) | ~>3.5 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_digitalocean"></a> [digitalocean](#provider\_digitalocean) | 2.28.1 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.5.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_compute"></a> [compute](#module\_compute) | ./compute | n/a |
| <a name="module_database"></a> [database](#module\_database) | ./db | n/a |
| <a name="module_image"></a> [image](#module\_image) | ./image | n/a |
| <a name="module_storage"></a> [storage](#module\_storage) | ./storage | n/a |

## Resources

| Name | Type |
|------|------|
| [digitalocean_project.wpaas](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/project) | resource |
| [digitalocean_project_resources.wpaas](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/project_resources) | resource |
| [random_pet.project](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/pet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_do_region"></a> [do\_region](#input\_do\_region) | Digital Ocean Deployment Region for everything else. | `string` | `"nyc3"` | no |
| <a name="input_do_region_app"></a> [do\_region\_app](#input\_do\_region\_app) | Digital Ocean Deployment Region for the App | `string` | `"nyc"` | no |
| <a name="input_do_token"></a> [do\_token](#input\_do\_token) | Digital Ocean Access Token | `string` | n/a | yes |
| <a name="input_existing_db_name"></a> [existing\_db\_name](#input\_existing\_db\_name) | When using a preexisting database | `string` | `null` | no |
| <a name="input_image_subscription_tier"></a> [image\_subscription\_tier](#input\_image\_subscription\_tier) | Digital Ocean Container Registry Plan Tier | `string` | `"starter"` | no |
| <a name="input_image_tag"></a> [image\_tag](#input\_image\_tag) | n/a | `string` | `"latest"` | no |
| <a name="input_instance_size"></a> [instance\_size](#input\_instance\_size) | The size for the Digital Ocean App | `string` | `"basic-xxs"` | no |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | n/a | `string` | `null` | no |
| <a name="input_public_url"></a> [public\_url](#input\_public\_url) | If left blank, a Digital Ocean endpoint will be provided. | `string` | `null` | no |
| <a name="input_spaces_key"></a> [spaces\_key](#input\_spaces\_key) | Digital Ocean Spaces Key | `string` | n/a | yes |
| <a name="input_spaces_secret"></a> [spaces\_secret](#input\_spaces\_secret) | Digital Ocean Spaces Secret | `string` | n/a | yes |
| <a name="input_wp_auth_key"></a> [wp\_auth\_key](#input\_wp\_auth\_key) | n/a | `string` | n/a | yes |
| <a name="input_wp_auth_salt"></a> [wp\_auth\_salt](#input\_wp\_auth\_salt) | n/a | `string` | n/a | yes |
| <a name="input_wp_db_host"></a> [wp\_db\_host](#input\_wp\_db\_host) | Digital Ocean sets their hosted DBs to non-default ports. Should be set following a `<db_host>:<db_port>` pattern. | `string` | n/a | yes |
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
<!-- END_TF_DOCS -->