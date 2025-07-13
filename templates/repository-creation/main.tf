resource "github_repository" "repo" {
  name        = var.repo_name
  description = var.repo_description
  visibility  = var.visibility

  auto_init          = true
  gitignore_template = "Terraform"
  
  # Repository settings
  has_issues    = true
  has_projects  = false
  has_wiki      = false
  has_downloads = false
  
  # Security settings
  vulnerability_alerts = true
}

resource "github_repository_collaborator" "collaborators" {
  for_each   = var.collaborators
  repository = github_repository.repo.name
  username   = each.key
  permission = each.value.permission
}