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
  repository = data.terraform_remote_state.base.outputs.base_repository_name

  team {
    team_id    = data.terraform_remote_state.base.outputs.teams_ids[0]
    permission = "push"
  }

  team {
    team_id    = data.terraform_remote_state.base.outputs.teams_ids[1]
    permission = "push"
  }

  team {
    team_id    = data.terraform_remote_state.base.outputs.teams_ids[2]
    permission = "pull"
  }
}

resource "local_file" "tf_github_lab_app_codeowners" {
  content  = "* @${data.terraform_remote_state.base.outputs.organization_name}/${data.terraform_remote_state.base.outputs.security_manager_team_slug}"
  filename = ".github/CODEOWNERS"
}