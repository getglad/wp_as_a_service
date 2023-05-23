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
| <a name="provider_random"></a> [random](#provider\_random) | ~>3.5 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [digitalocean_spaces_bucket.wpaas](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/spaces_bucket) | resource |
| [random_pet.project](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/pet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_do_region"></a> [do\_region](#input\_do\_region) | Digital Ocean Deployment Region | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_do_spaces_name"></a> [do\_spaces\_name](#output\_do\_spaces\_name) | n/a |
| <a name="output_urn"></a> [urn](#output\_urn) | n/a |
<!-- END_TF_DOCS -->