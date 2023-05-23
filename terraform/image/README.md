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
| [digitalocean_container_registry.wpaas](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/container_registry) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_do_region"></a> [do\_region](#input\_do\_region) | n/a | `string` | `"nyc3"` | no |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | n/a | `string` | n/a | yes |
| <a name="input_subscription_tier"></a> [subscription\_tier](#input\_subscription\_tier) | n/a | `string` | `"starter"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_image_name"></a> [image\_name](#output\_image\_name) | n/a |
<!-- END_TF_DOCS -->