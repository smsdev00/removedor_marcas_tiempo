# Install python script dependencies
echo "Install python script dependencies"
pip install -r requirements.txt > /dev/null 2>&1

# Perform a Git fetch to update the remote references
echo "Perform a Git fetch to update the remote references"
git fetch

# Check if there are any updates available from the remote repository
updatesAvailable=$(git status -uno)

# If updates are available, pull the changes from the remote repository
if [[ $updatesAvailable == *"Your branch is behind"* ]]; then
    # Perform a Git fetch to update the remote references
    echo "updates are available, pull the changes from the remote repository"
    git pull
fi

# Run the Python script from the repository directory
echo "Running python script"
python3 main.py
