# GitHub Repository Creation Terraform Template

This Terraform template creates a GitHub repository and manages collaborators.

## Usage
1. Configure the GitHub provider with a Personal Access Token.
2. Define variables in a `terraform.tfvars` file or via CI/CD inputs.
3. Run `terraform apply` to create or update the repository.

## Variables
- `github_token`: GitHub Personal Access Token (sensitive).
- `repo_name`: Name of the repository.
- `repo_description`: Description of the repository (optional).
- `repo_visibility`: Visibility (public, private, internal; default: public).
- `collaborators`: List of GitHub usernames to add as collaborators (optional).
- `collaborator_permission`: Permission level for collaborators (pull, push, admin; default: push).