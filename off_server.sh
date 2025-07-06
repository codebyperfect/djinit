# Get Django server PID on port 8000
pid=$(lsof -t -i:8000 -sTCP:LISTEN)

# Show PID
echo "Stopping Django server with PID: $pid"

# Kill only Django server
kill $pid
echo "Stopped Django server"
