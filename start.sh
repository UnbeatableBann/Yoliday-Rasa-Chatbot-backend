#!/bin/bash
rasa run actions --port 5055 --debug &
rasa run --enable-api --cors "*" --port $PORT --debug
