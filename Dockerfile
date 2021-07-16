FROM redis

RUN curl https://raw.githubusercontent.com/hex22a/file-generator/main/generate_files.sh | bash -s 100000 ./garbage

RUN tar -zcvf garbage.tar.gz garbage

RUN zip -r garbage.zip ./garbage

ADD garbage ./garbage-dist

ADD garbage.tar.gz ./garbage-tar

ADD garbage.zip ./garbage-zip

ADD redis.conf /usr/local/etc/redis/redis.conf

ADD example.txt .

CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]
