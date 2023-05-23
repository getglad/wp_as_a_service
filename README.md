# wp_as_a_service

WPaaS is an opinionated deployment mechanism for deploying disposable WordPress servers.

It accomplishes this goal by largely separating the concerns of a standard WordPress deployment into:

1. A remote mysql-compatible database
2. S3-Compatible object storage for media files via [S3 Uploads](https://github.com/humanmade/S3-Uploads)
3. [Containerized WordPress](./docker/Dockerfile) with templates and [plugins](./docker/plugins.sh) pre-loaded

This project is designed to be:

1. deployed by [Terraform](./terraform/)
2. deployed to Digital Ocean using
   1. [Apps](https://docs.digitalocean.com/products/app-platform/)
   2. [Spaces](https://docs.digitalocean.com/products/spaces/)
   3. [Databases](https://docs.digitalocean.com/products/databases/)

## Deploying

### Prereqs

1. [`tfenv`](https://github.com/tfutils/tfenv)
2. [`doctl`](https://docs.digitalocean.com/reference/doctl/how-to/install/)

### Infrastructure

The infra for WPaaS is defined in [Terraform](./terraform/). There are a number of required variables outlined in the `README`.

#### Notes

1. This project assumes it will be deployed with [Terraform Cloud](https://developer.hashicorp.com/terraform/cloud-docs) or as a module of a larger project, thus does not define a [TF state backend](https://developer.hashicorp.com/terraform/language/settings/backends/configuration). Users who intend to deploy it by itself and without TFC should define their own backend.
2. The Digital Ocean Spaces resource will be assigned a name using the [random provider](https://registry.terraform.io/providers/hashicorp/random/latest/docs) to avoid naming collisions.

### Deploying

1. An initial Terraform deployment will fail as it will create [the Container Repository](./terraform/image/registry.tf), but an image will not yet exist to be referenced by [the app](./terraform/compute/).
2. `make img_push`
   1. This command will build and push the container image and will require [`doctl` to be configured with your credentials](https://docs.digitalocean.com/reference/doctl/how-to/install/#step-3-use-the-api-token-to-grant-account-access-to-doctl).
3. A second deploy should be successful.

## Contributing

This project is a work in progress. Issues and PRs are welcomed!
