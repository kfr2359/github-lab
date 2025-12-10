output "organization_id" { value = github_organization_settings.my_org.id }
output "organization_name" { value = github_organization_settings.my_org.name }
output "teams_ids" {
  value = [
    github_team.nodejs_team.id,
    github_team.devops_team.id,
    github_team.security_team.id,
  ]
}
output "security_manager_team_slug" { value = github_team.security_team.name }
output "secret_names" {
  value = [
    github_actions_organization_secret.org_username.secret_name,
    github_actions_organization_secret.org_password.secret_name,
  ]
}
output "base_repository_name" { value = github_repository.tf_github_lab_devops_repository.name }