FROM redis

COPY example.txt .

CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]
