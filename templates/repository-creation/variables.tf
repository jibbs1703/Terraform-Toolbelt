variable "github_token" {
  description = "GitHub Personal Access Token"
  type        = string
  sensitive   = true
}

variable "repo_name" {
  description = "Name of the GitHub repository"
  type        = string
}

variable "repo_description" {
  description = "Description of the GitHub repository"
  type        = string
  default     = ""
}

variable "repo_visibility" {
  description = "Visibility of the repository (public, private, internal)"
  type        = string
  default     = "public"
}

variable "collaborators" {
  description = "List of GitHub usernames to add as collaborators"
  type        = list(string)
  default     = []
}

variable "collaborator_permission" {
  description = "Permission level for collaborators (pull, push, admin)"
  type        = string
  default     = "push"
}