FROM php:8.0-fpm-buster

COPY ./php.ini /usr/local/etc/php/php.ini
COPY --from=composer:2.0 /usr/bin/composer /usr/bin/composer

RUN apt-get update && apt-get install -y \
  curl \
  make \
  git \
  bash \
  nodejs \
  npm \
  yarn \
  libzip-dev \
  libpng-dev && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* && \
  git clone https://github.com/phpredis/phpredis.git /usr/src/php/ext/redis && \
  # Install XDebug
  pecl install xdebug && \
  docker-php-ext-enable xdebug && \
  # Install PHP Extension
  docker-php-ext-install \
  bcmath \
  pdo_mysql \
  zip \
  redis

WORKDIR /app