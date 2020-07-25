resource "github_repository" "vaku" {
  name         = "vaku"
  description  = "A CLI and Go API to extend the official Vault client"
  homepage_url = "https://vaku.dev/"

  default_branch = "main"
  private        = false

  has_wiki   = false
  has_issues = true

  allow_merge_commit     = true
  allow_squash_merge     = true
  allow_rebase_merge     = true
  delete_branch_on_merge = true

  topics = [
    "cli",
    "go",
    "golang",
    "vault",
    "vault-api",
    "vault-client",
  ]
}

resource "github_branch_protection" "vaku" {
  repository     = github_repository.vaku.name
  branch         = "main"
  enforce_admins = true

  required_status_checks {
    strict = true
    contexts = [
      "validate"
    ]
  }
}
