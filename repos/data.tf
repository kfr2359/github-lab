data "github_organization" "my_org" {
  name         = var.gh_org_name
  summary_only = true
}

data "github_organization_teams" "all" {}