variable "gh_token" { type = string }

variable "gh_email" { type = string }
variable "gh_org_name" { type = string }

variable "username" {
  description = "Dummy API username"
  type        = string
  sensitive   = true
}

variable "password" {
  description = "Dummy API password"
  type        = string
  sensitive   = true
}