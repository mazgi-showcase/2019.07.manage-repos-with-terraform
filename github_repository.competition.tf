variable "repositories_competition" {
  type = map(string)
  default = {
    "one"  = "The One Competition"
    "2nd"  = "The 2nd Competition"
    "no-3" = "The Competition No.3"
  }
}

resource "github_repository" "competition" {
  count = length(var.repositories_competition)

  name        = format("201907.tf-gh.%s-competition", element(keys(var.repositories_competition), count.index))
  description = element(values(var.repositories_competition), count.index)
  has_issues  = true
}

# Issue labels
# https://www.colordic.org/m/

resource "github_issue_label" "midosuji" {
  count = length(var.repositories_competition)

  repository = github_repository.competition[count.index].name
  name       = "201907-tf-gh-midosuji"
  color      = "e5171f"
}

resource "github_issue_label" "tanimachi" {
  count = length(var.repositories_competition)

  repository = github_repository.competition[count.index].name
  name       = "201907-tf-gh-tanimacni"
  color      = "522886"
}

resource "github_issue_label" "yotsubashi" {
  count = length(var.repositories_competition)

  repository = github_repository.competition[count.index].name
  name       = "201907-tf-gh-yotsubashi"
  color      = "0078ba"
}
