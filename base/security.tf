resource "github_team" "security_team" {
  name    = "security-team"
  privacy = "closed"
}

resource "github_team_members" "security_team_members" {
  team_id = github_team.security_team.id

  members {
    username = "kfr2359"
    role     = "member"
  }
}