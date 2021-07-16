FROM redis

ADD garbage ./garbage-dist

ADD garbage.tar.gz ./garbage-tar

ADD garbage.zip ./garbage-zip

ADD redis.conf /usr/local/etc/redis/redis.conf

ADD example.txt .

CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]
