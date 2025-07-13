resource "github_repository" "repo" {
  name                 = var.repo_name
  description          = var.repo_description
  visibility           = var.visibility
  auto_init            = true
  gitignore_template   = "Python"
  has_issues           = true
  has_projects         = false
  has_wiki             = false
  has_downloads        = false
  vulnerability_alerts = true

  #  allow_auto_merge            = false
  #     + allow_merge_commit          = true
  #     + allow_rebase_merge          = true
  #     + allow_squash_merge          = true
  #     + archived                    = false
  #     + auto_init                   = true
  #     + default_branch              = (known after apply)
  #     + delete_branch_on_merge      = false
  #     + description                 = "A repository created via Terraform"
  #     + etag                        = (known after apply)
  #     + full_name                   = (known after apply)
  #     + git_clone_url               = (known after apply)
  #     + gitignore_template          = "Python"
  #     + has_downloads               = false
  #     + has_issues                  = true
  #     + has_projects                = false
  #     + has_wiki                    = false
  #     + html_url                    = (known after apply)
  #     + http_clone_url              = (known after apply)
  #     + id                          = (known after apply)
  #     + merge_commit_message        = "PR_TITLE"
  #     + merge_commit_title          = "MERGE_MESSAGE"
  #     + name                        = "my-test-repo"
  #     + node_id                     = (known after apply)
  #     + primary_language            = (known after apply)
  #     + private                     = (known after apply)
  #     + repo_id                     = (known after apply)
  #     + squash_merge_commit_message = "COMMIT_MESSAGES"
  #     + squash_merge_commit_title   = "COMMIT_OR_PR_TITLE"
  #     + ssh_clone_url               = (known after apply)
  #     + svn_url                     = (known after apply)
  #     + topics                      = (known after apply)
  #     + visibility                  = "public"
  #     + vulnerability_alerts        = true
  #     + web_commit_signoff_required = false

  #     + security_and_analysis (known after apply)
}

resource "github_repository_collaborator" "collaborators" {
  for_each   = var.collaborators
  repository = github_repository.repo.name
  username   = each.key
  permission = each.value.permission
}