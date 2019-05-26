workflow "Assign reviewers based on assignees" {
  on = "pull_request"
  resolves = ["Assignee to reviewer"]
}

action "Assignee to reviewer" {
  uses = "pullreminders/assignee-to-reviewer-action@master"
  secrets = [
    "GITHUB_TOKEN"
  ]
}
