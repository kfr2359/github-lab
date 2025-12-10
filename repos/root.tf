terraform {
  backend "pg" {
    conn_str = "postgres://tfstate:aA123456@localhost/repos?sslmode=disable"
  }
}

provider "github" {
  owner = "gh-lab-kfr2359"
  token = var.gh_token
}
