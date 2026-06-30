#!/bin/bash
cd "$(dirname "$0")"

# Kill existing
lsof -ti :8899 | xargs kill -9 2>/dev/null
lsof -ti :5899 | xargs kill -9 2>/dev/null
sleep 1

# Start backend
nohup .venv/bin/vibe-trading serve --port 8899 > /tmp/vibe-backend.log 2>&1 &
echo "Backend PID: $!"

# Start frontend
cd frontend && nohup npm run dev > /tmp/vibe-frontend.log 2>&1 &
echo "Frontend PID: $!"

echo "Starting... wait 8 seconds"
sleep 8
echo ""
echo "Backend: $(curl -s http://localhost:8899/health | grep -o '"status":"[^"]*"' || echo 'not ready')"
echo "Frontend: http://localhost:5899/"
