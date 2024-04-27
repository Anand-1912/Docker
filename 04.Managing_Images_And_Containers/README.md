#### docker help

docker --help

#### creates and runs a NEW container based on the image identified by IMAGE_ID

docker run <IMAGE_ID>

```
 'docker run' runs the container in Attached mode by default (i.e) blocks the console.

 The container runs in the foreground by default.

 We are listening to the output from the container.

```

#### starts a stopped container

docker start <CONTAINER_NAME>

```
'docker start' runs the container in Detached mode by default (i.e) does not block the console.

The container runs in the background by default.

```

---

#### Examples

---

- docker run -p 3000:80 95853ddf53c6 (let's consider the container name is relaxed_grothendieck)

  - In run command, port is published on the container

- docker stop relaxed_grothendieck

- docker start relaxed_grothendieck

  - port is not published in the start command.If the container was published with the port when it was created (using run command), then it starts with the same published port.

- docker attach <CONTAINER_NAME>

  - To Attach the containers

- docker run -d -p 3000:80 <IMAGE_ID>

  - Creates and run a new container in DETACHED MODE

- docker logs <CONTAINER_NAME>

  - retrieves the output / logs written by the container

- docker logs -f <CONTAINER_NAME>

  - 'flag f' - Furture logs

  - retrieves the output / logs written by the container and attach the container to listen for the future logs from the container
