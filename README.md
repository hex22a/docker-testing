# docker-testing

## generating garbage

```bash
curl https://raw.githubusercontent.com/hex22a/file-generator/main/generate_files.sh | bash -s 100000 ./garbage
```

```bash
tar -zcvf garbage.tar.gz garbage
```

```bash
zip -r garbage.zip ./garbage
```

## cleanup

```bash
curl https://raw.githubusercontent.com/hex22a/file-generator/main/cleanup.sh | bash -s ./garbage
```