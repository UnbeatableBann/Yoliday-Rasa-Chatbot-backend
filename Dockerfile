FROM rasa/rasa:3.6.16-full

WORKDIR /app
COPY . /app

USER root
RUN pip install --no-cache-dir -r requirements.txt

COPY start.sh /app/start.sh
RUN chmod +x /app/start.sh

CMD ["./start.sh"]
