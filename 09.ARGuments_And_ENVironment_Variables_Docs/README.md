## Notes

1. Docker supports build-time **ARG**uments and runtime **ENV**ironment variables.

## ARG

1. Available inside of Dockerfile, and not accessible in CMD or any application code.

2. Value to the ARG is set during image build (docker build ) via --build-arg

```
docker build -t nodeappimg:latest --build-arg DEFAULT_PORT=3000 .

```

## ENV

1. Available inside of Dockerfile and in Application code.

2. Set via **ENV** in Dockerfile or via --env or -e on **docker run**.

3. Environment Variables can also be applied using .env files and the flag **--env-file**.

```

docker run -d --rm -e PORT=3000 -p 3000:3000 --name nodeapp nodeapp:latest

```
