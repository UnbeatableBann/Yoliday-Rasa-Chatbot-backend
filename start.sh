#!/bin/bash
echo "Starting Rasa and Action Server..."
rasa run actions --port 5055 &
rasa run --enable-api --cors "*" --port 5005 &
echo "Starting frontend on port $PORT..."
python3 -m http.server $PORT --directory ./frontend
