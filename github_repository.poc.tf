variable "repositories_poc" {
  type = map(string)
  default = {
    "first" = "First PoC"
    "2nd"   = "PoC #2"
    "03"    = "PoC 03"
  }
}

resource "github_repository" "poc" {
  count = length(var.repositories_poc)

  name        = format("201907.tf-gh.%s-poc", element(keys(var.repositories_poc), count.index))
  description = element(values(var.repositories_poc), count.index)
  has_issues  = true
}

# Issue labels
# https://www.colordic.org/m/

resource "github_issue_label" "ginza" {
  count = length(var.repositories_poc)

  repository = github_repository.poc[count.index].name
  name       = "201907-tf-gh-ginza"
  color      = "f39700"
}

resource "github_issue_label" "marunouchi" {
  count = length(var.repositories_poc)

  repository = github_repository.poc[count.index].name
  name       = "201907-tf-gh-marunouchi"
  color      = "e60012"
}

resource "github_issue_label" "hibiya" {
  count = length(var.repositories_poc)

  repository = github_repository.poc[count.index].name
  name       = "201907-tf-gh-hibiya"
  color      = "9caeb7"
}
