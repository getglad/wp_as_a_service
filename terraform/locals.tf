resource "random_pet" "project" {}

locals {
  project_name = var.project_name == null ? var.project_name : random_pet.project.keepers.name.id
}
