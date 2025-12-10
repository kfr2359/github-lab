data "terraform_remote_state" "base" {
  backend = "pg"

  config = {
    conn_str = "postgres://tfstate:aA123456@localhost/base?sslmode=disable"
  }
}