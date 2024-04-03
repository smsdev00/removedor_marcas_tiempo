### Bash Script (for Git Bash or WSL):
#!/bin/bash

# Define the path to your local repository
repoPath="/home/sms/code/removedor_marcas_tiempo"

# Navigate to the repository directory
cd "$repoPath"
echo pwd

# Perform a Git fetch to update the remote references
git fetch

# Check if there are any updates available from the remote repository
updatesAvailable=$(git status -uno)

# If updates are available, pull the changes from the remote repository
if [[ $updatesAvailable == *"Your branch is behind"* ]]; then
    git pull
fi

# Run the Python script from the repository directory
python3 main.py