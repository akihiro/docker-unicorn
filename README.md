# docker-unicorn
ruby unicorn container

## How to Use

```bash
$ docker run -d \
>   -v /path/to/log:/var/log/unicorn/:rw \
>   -v /path/to/app:/unicorn:ro  \
>   -p 8000:8000
>   mhiroaki/unicorn
$ curl http://localhost:8000/
hello world
```

- Change Listen port
  - ```-e LISTEN=8080```
  - ```-e LISTEN=/var/run/unicorn.sock```
  - Default 8000/tcp
- Change number of process
  - ```-e PROCESS=4```
  - default 1 process

