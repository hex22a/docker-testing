FROM redis

COPY redis.conf /usr/local/etc/redis/redis.conf

COPY example.txt .

CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]
