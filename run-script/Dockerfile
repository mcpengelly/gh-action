FROM node:slim

LABEL "com.github.actions.name" = "PR was updated"
LABEL "com.github.actions.description" = "runs a script whenever a PR is updated"
LABEL "com.github.actions.icon" = "activity"
LABEL "com.github.actions.color" = "white"

LABEL "repository" = "https://github.com/mcpengelly/gh-action"
LABEL "homepage" = "https://github.com/mcpengelly/gh-action"

# Copy over project files
COPY . .

# Install dependencies
RUN npm install

# This is what GitHub will run
ENTRYPOINT ["node", "/index.js"]
