workflow "run script when PR updated" {
  on = "pull_request"
  resolves = ["run danger", "Assignee to reviewer", "branch cleanup"]
}

action "run danger" {
  uses = "./run-script/"
}

action "Assignee to reviewer" {
  uses = "pullreminders/assignee-to-reviewer-action@master"
  secrets = [
    "GITHUB_TOKEN"
  ]
}

action "branch cleanup" {
  uses = "jessfraz/branch-cleanup-action@master"
  secrets = ["GITHUB_TOKEN"]
}
