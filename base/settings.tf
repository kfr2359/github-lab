resource "github_organization_settings" "my_org" {
  name                                                     = var.gh_org_name
  billing_email                                            = var.gh_email
  company                                                  = var.gh_org_name
  description                                              = "${var.gh_org_name} organization for GitHub terraform lab"
  default_repository_permission                            = "read"
  members_can_create_repositories                          = false
  members_can_create_public_repositories                   = false
  members_can_create_private_repositories                  = false
  members_can_create_internal_repositories                 = false
  members_can_create_pages                                 = false
  members_can_create_public_pages                          = false
  members_can_create_private_pages                         = false
  members_can_fork_private_repositories                    = false
  web_commit_signoff_required                              = false
  dependabot_alerts_enabled_for_new_repositories           = true
  dependabot_security_updates_enabled_for_new_repositories = true
  dependency_graph_enabled_for_new_repositories            = true
  advanced_security_enabled_for_new_repositories           = false
}