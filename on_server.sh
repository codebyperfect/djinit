#!/bin/bash

echo "-------------------------------------------------------------"
echo "List of available projects:"
echo "-------------------------------------------------------------"
ls -ld */
echo "-------------------------------------------------------------"
echo "📦 Enter Project name you want to start the server with:"
echo "-------------------------------------------------------------"
read pname

# Check if directory exists
if [[ ! -d "$pname" ]]; then
  echo -e "\e[31m❌ Error: Project '$pname' not found!\e[0m"
  echo "🔁 Please re-run the script and choose a valid project."
  return 1
fi

echo "-------------------------------------------------------------"
echo -e "Starting project: \e[32m $pname\e[0m"
cd "$pname"

# Check if something already running on port 8000
pid=$(lsof -t -i:8000 -sTCP:LISTEN)

if [[ -n "$pid" ]]; then
  echo -e "\e[33m⚠️ Port 8000 already in use. Killing PID: $pid\e[0m"
  kill $pid
  sleep 1
  echo -e "\e[32m✅ Old server stopped.\e[0m"
fi

# Start new server
python manage.py runserver 0.0.0.0:8000 &  # Start server in background
sleep 3                                   # Wait for server to start

# Wait until port 8000 is actually open
echo -e "\e[34m⏳ Waiting for server to start...\e[0m"
while ! nc -z localhost 8000; do
  sleep 0.5
done

# Get new server PID
new_pid=$(lsof -t -i:8000 -sTCP:LISTEN)
echo -e "\e[32m✅ Server started for project $pname in background with PID: $new_pid\e[0m"

# Open browser
xdg-open http://localhost:8000
echo -e "🌐 Check Browser with Link:\e[32m http://localhost:8000\e[0m"
echo "-------------------------------------------------------------"

