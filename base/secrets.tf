resource "github_actions_organization_secret" "org_username" {
  secret_name             = "org_username"
  visibility              = "selected"
  plaintext_value         = var.username
  selected_repository_ids = [data.github_repository.tf_lab_app.repo_id]
}

resource "github_actions_organization_secret" "org_password" {
  secret_name             = "org_password"
  visibility              = "selected"
  plaintext_value         = var.password
  selected_repository_ids = [data.github_repository.tf_lab_app.repo_id]
}