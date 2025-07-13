provider "github" {
  token = var.github_token
}

resource "github_repository" "repo" {
  name        = var.repo_name
  description = var.repo_description
  visibility  = var.repo_visibility
  auto_init   = true
}

resource "github_repository_collaborator" "collaborators" {
  for_each   = toset(var.collaborators)
  repository = github_repository.repo.name
  username   = each.value
  permission = var.collaborator_permission
}