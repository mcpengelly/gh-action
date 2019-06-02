
workflow "Dangerfile JS Pull" {
  on = "pull_request"
  resolves = "action a"
}

action "action a" {
  secrets = ["GITHUB_TOKEN"]
  uses = "./run-danger/"
}
