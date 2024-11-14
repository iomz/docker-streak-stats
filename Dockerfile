FROM debian:bookworm

ENV TZ="Asia/Tokyo"

RUN apt-get update \
    && apt-get install -y --no-install-recommends git php php-curl php-xml composer inkscape \
    && apt-get clean \
    && apt-get autoremove -yqq --purge \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /app

RUN git clone https://github.com/DenverCoder1/github-readme-streak-stats.git
WORKDIR /app/github-readme-streak-stats
COPY .env /app/github-readme-streak-stats/

ENV COMPOSER_ALLOW_SUPERUSER=1
RUN composer update
RUN composer install

COPY composer.json /app/github-readme-streak-stats/

EXPOSE 8000/tcp
ENTRYPOINT ["composer", "start"]
