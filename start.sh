#!/bin/bash

# Activate the virtual environment
source venv/bin/activate

# Start the API server in a new Terminal window
osascript -e 'tell app "Terminal" to do script "cd '"$(pwd)"' && source venv/bin/activate && python3 -m aider.api"'

# Wait for the API to start (adjust the sleep time if needed)
sleep 5

# Run npm watch in the current terminal.
npm run watch
