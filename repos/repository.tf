resource "github_repository" "tf_github_lab_app" {
  name                   = "tf-lab-app"
  description            = "TF GitHub lab repository for nodejs app"
  vulnerability_alerts   = true
  visibility             = "public"
  has_issues             = true
  has_projects           = true
  has_wiki               = true
  allow_squash_merge     = true
  allow_merge_commit     = true
  allow_rebase_merge     = true
  delete_branch_on_merge = true
  auto_init              = true
}

resource "github_repository_collaborators" "tf_github_lab_app" {
  repository = "tf-lab-app"

  team {
    team_id    = [for team in data.github_organization_teams.all.teams : team if team.name == "nodejs-team"][0].id
    permission = "push"
  }

  team {
    team_id    = [for team in data.github_organization_teams.all.teams : team if team.name == "security-team"][0].id
    permission = "push"
  }

  team {
    team_id    = [for team in data.github_organization_teams.all.teams : team if team.name == "devops-team"][0].id
    permission = "pull"
  }
}

resource "local_file" "tf_github_lab_app_codeowners" {
  content  = "* @${data.github_organization.my_org.name}/security-team"
  filename = ".github/CODEOWNERS"
}