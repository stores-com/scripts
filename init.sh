# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install 24

# AWS CLI
brew install awscli

# Azure CLI: https://learn.microsoft.com/en-us/cli/azure/install-azure-cli-macos?view=azure-cli-latest
brew install azure-cli

# Claude
brew install --cask claude

# Claude Code
curl -fsSL https://claude.ai/install.sh | bash

# MongoDB
brew tap mongodb/brew
brew install mongodb-community@8.0
brew services start mongodb-community@8.0

# MongoDB Atlas CLI: https://www.mongodb.com/docs/atlas/cli/current
brew install mongodb-atlas-cli

# MongoDB Compass
brew install mongodb-compass

# npmclean
echo 'alias npm-clean="rm -rf node_modules/ && rm -f package-lock.json && npm i && npm outdated"' >> ~/.zshrc
alias npm-clean="rm -rf node_modules/ && rm -f package-lock.json && npm i && npm outdated"

# ESLint
npm i eslint -g
npm i @eslint/js -g

# Playwright
npm install -g @playwright/cli@latest
playwright-cli --help
playwright-cli install --skills

# PM2
npm i pm2 -g

# GitHub CLI
brew install gh

# GitHub Desktop
brew install github

# ngrok
brew install ngrok

# Redis
brew install redis
brew services start redis

# Salesforce CLI
brew install --cask salesforce-cli

# Visual Studio Code
brew install visual-studio-code

# Visual Studio Code Extensions
code --install-extension Anthropic.claude-code
code --install-extension dbaeumer.vscode-eslint
code --install-extension DigitalBrainstem.javascript-ejs-support
code --install-extension mechatroner.rainbow-csv
code --install-extension ms-ossdata.vscode-pgsql
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension redhat.vscode-yaml

# Mac App Store CLI
brew install mas

# Azure VPN Client
mas install 1553936137

# Slack
mas install 803453959
