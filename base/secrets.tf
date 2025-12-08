resource "github_actions_organization_secret" "org_username" {
  secret_name     = "org_username"
  visibility      = "selected"
  plaintext_value = var.username
}

resource "github_actions_organization_secret" "org_password" {
  secret_name     = "org_password"
  visibility      = "selected"
  plaintext_value = var.password
}