FROM wordpress:latest

# Installer unzip et mysqli
RUN apt-get update && apt-get install -y unzip \
    && docker-php-ext-install mysqli \
    && rm -rf /var/lib/apt/lists/*