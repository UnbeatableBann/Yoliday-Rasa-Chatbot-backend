FROM rasa/rasa:3.6.16-full

WORKDIR /app
COPY . /app

USER root
RUN pip install --no-cache-dir -r requirements.txt

# runs both rasa and actions
CMD rasa run --enable-api --cors "*" --port 5005 & rasa run actions --port 5055
