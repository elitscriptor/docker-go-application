## docker-go-app
Several Examples for building docker containers for Go applications.

Running the app locally

```bash
$ go build -o docker-go-app
$ ./docker-go-app
2020/02/12 03:38:22 Starting http server at - :9000
2020/02/09 22:33:08 Starting http server at - :9000
```
----------------------

```bash
$ curl http://localhost:9000
Hello, world
```

### Building and running the docker image

**Build**

```bash
$ docker build -t docker-go-app .
```

**Run The Docker Image**

Use the following command to run a docker image. This command will run your docker file `CMD` instruction.

```bash
$ docker run -d -p 8080:9000 docker-go-app
d69f542ee21ac4014ceaa9bd88496fd59a07be1dbc33c416f29099204858d645
```

**Interacting with the app running inside the docker container**

```bash
$ curl http://localhost:8080
Hello, world
```

Read more from tutorial: [Docker Container For Go App](https://www.elitscriptor.com/devops/docker-container)
