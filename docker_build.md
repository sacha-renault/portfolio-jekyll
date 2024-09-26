```sh
docker build -t portfolio .
```

```sh
docker run --rm -p 4000:4000 -v $(pwd):/usr/src/app --name portfolio portfolio
```
