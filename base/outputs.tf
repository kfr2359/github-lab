output "security_manager_team_slug" { value = github_team.security_team.name }
output "secret_names" {
  value = [
    github_actions_organization_secret.org_username.secret_name,
    github_actions_organization_secret.org_password.secret_name,
  ]
}
