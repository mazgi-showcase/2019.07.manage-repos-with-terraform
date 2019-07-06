terraform {
  required_version = "0.12.3"

  required_providers {
    github = "2.2"
  }
}

provider "github" {
  token        = "${var.github_token}"
  organization = "mazgi-sandbox"
}
