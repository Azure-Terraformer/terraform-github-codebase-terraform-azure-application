# Overview

This Terraform module automates the initialization of a basic Azure Terraform project by provisioning essential configuration files within a specified GitHub repository and branch. It creates key Terraform files such as main.tf, terraform.tfvars, variables.tf, and versions.tf, along with a .gitignore file, ensuring a standardized project structure for deploying an Azure resource group. 

By provisioning these files directly in the repository, the module streamlines the setup process, enabling consistent and repeatable infrastructure deployment as part of the GitHub AT-AT framework. 

This facilitates seamless integration and automation for Terraform and Azure-based projects, allowing teams to quickly establish and manage their Azure infrastructure through version-controlled GitHub repositories.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_github"></a> [github](#requirement\_github) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | ~> 5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_repository_file.bulk](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_file) | resource |
| [github_repository_file.gitignore](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_file) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_branch"></a> [branch](#input\_branch) | The branch of the GitHub repository where the workflow YAML file will be committed. | `string` | n/a | yes |
| <a name="input_commit_user"></a> [commit\_user](#input\_commit\_user) | The GitHub identity used to commit the workflow YAML file to the repository.<br><br>This includes:<br>- **name**: The name of the user committing the workflow file.<br>- **email**: The email address of the user committing the workflow file.<br><br>Ensure that the provided Git identity has the necessary permissions to push changes to the specified repository and branch. | <pre>object({<br>    name  = string<br>    email = string<br>  })</pre> | n/a | yes |
| <a name="input_path"></a> [path](#input\_path) | The path where the source code files should be placed within the GitHub repository. | `string` | `"src/terraform"` | no |
| <a name="input_repository"></a> [repository](#input\_repository) | The name of the GitHub repository where the GitHub sourcecode files will be created. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_path"></a> [path](#output\_path) | n/a |
<!-- END_TF_DOCS -->