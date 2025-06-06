FROM rasa/rasa:3.6.16-full
WORKDIR /app
COPY . /app
COPY models /app/models
USER root
# Install any extra dependencies
RUN pip install --no-cache-dir -r requirements.txt

RUN chmod +x start.sh
ENTRYPOINT ["/bin/bash", "./start.sh"]
