resource "github_team" "devops_team" {
  name    = "devops-team"
  privacy = "secret"
}

resource "github_team" "nodejs_team" {
  name    = "nodejs-team"
  privacy = "secret"
}

resource "github_team_members" "nodejs_team_members" {
  team_id = github_team.nodejs_team.id

  members {
    username = "kfr2359"
    role     = "member"
  }
}