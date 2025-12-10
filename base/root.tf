terraform {
  backend "pg" {
    conn_str = "postgres://tfstate:aA123456@localhost/base?sslmode=disable"
  }
}

provider "github" {
  owner = "gh-lab-kfr2359"
  token = var.gh_token
}
