#!/bin/bash
echo "Starting Rasa and Action Server..."
ls -l
rasa run actions --port 5055 --debug &
rasa run --enable-api --cors "*" --port $PORT --debug
