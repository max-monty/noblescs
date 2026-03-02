FROM eclipse-temurin:21-jdk

# Install Python
RUN apt-get update && \
    apt-get install -y python3 && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . .

EXPOSE 3000

CMD ["python3", "server.py"]
