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

variable "visibility" {
  description = "Repository visibility"
  type        = string
  default     = "public"
  validation {
    condition     = contains(["public", "private"], var.visibility)
    error_message = "Visibility must be either 'public' or 'private'"
  }
}

variable "collaborators" {
  description = "List of collaborators with their permissions"
  type = map(object({
    permission = string
  }))
  default = {}
}