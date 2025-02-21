# PHP 7.4 ile başla
FROM php:7.4-cli

# curl ve json eklentilerini yükle
RUN apt-get update && apt-get install -y \
    libcurl4-openssl-dev \
    && docker-php-ext-install curl json

# Proje dosyalarını kopyala
COPY . /app

# Çalışma dizinini ayarla
WORKDIR /app

# Sunucu başlatma komutunu tanımla
CMD ["php", "-S", "0.0.0.0:8000", "-t", "."]
