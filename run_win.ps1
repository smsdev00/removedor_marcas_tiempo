# Install python script dependencies
Write-Host "Install python script dependencies"
pip install -r requirements.txt

# Perform a Git fetch to update the remote references
Write-Host "Perform a Git fetch to update the remote references"
git fetch

# Check if there are any updates available from the remote repository
git status
$updatesAvailable = git status -uno

# If updates are available, pull the changes from the remote repository
if ($updatesAvailable -match "Your branch is behind") {
    # Perform a Git fetch to update the remote references
    Write-Host "Updates are available, pulling the changes from the remote repository"
    git pull
}

# Run the Python script from the repository directory
Write-Host "Running python script"
python main.py
