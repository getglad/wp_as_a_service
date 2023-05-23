<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_digitalocean"></a> [digitalocean](#requirement\_digitalocean) | ~> 2.28 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_digitalocean"></a> [digitalocean](#provider\_digitalocean) | ~> 2.28 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [digitalocean_database_firewall.wpaas](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/database_firewall) | resource |
| [digitalocean_database_cluster.existing](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/data-sources/database_cluster) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_existing_db_name"></a> [existing\_db\_name](#input\_existing\_db\_name) | n/a | `string` | n/a | yes |
| <a name="input_wpaas_app_id"></a> [wpaas\_app\_id](#input\_wpaas\_app\_id) | n/a | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->