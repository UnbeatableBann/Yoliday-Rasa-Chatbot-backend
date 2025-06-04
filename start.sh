#!/bin/bash
echo "Starting Rasa and Action Server..."
echo "PORT is set to: $PORT"
rasa run actions --port 5055 &
rasa run --enable-api --cors "*" --port $PORT --model models/20250604-122941-stale-bus.tar.gz
