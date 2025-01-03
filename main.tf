
locals {
  files = [
    "main.tf",
    "terraform.tfvars",
    "variables.tf",
    "versions.tf"
  ]
}

resource "github_repository_file" "bulk" {

  for_each = toset(local.files)

  repository          = var.repository
  branch              = var.branch
  file                = "${var.path}/${each.key}"
  content             = file("${path.module}/files/${each.key}.t4")
  commit_message      = "Managed by Terraform"
  commit_author       = var.commit_user.name
  commit_email        = var.commit_user.email
  overwrite_on_create = true
}

resource "github_repository_file" "gitignore" {

  repository          = var.repository
  branch              = var.branch
  file                = ".gitignore"
  content             = file("${path.module}/files/.gitignore")
  commit_message      = "Managed by Terraform"
  commit_author       = var.commit_user.name
  commit_email        = var.commit_user.email
  overwrite_on_create = true

}
