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

  - port is not published in the "start" command.If the container was published with the port when it was created (using run command), then it starts with the same published port.

- docker attach <CONTAINER_NAME>

  - To Attach the containers (to listen for the outputs)

  - Note: To enter inputs to the container, we have to run the container in "Interactive" mode.

- docker run -d -p 3000:80 <IMAGE_ID>

  - Creates and run a new container in DETACHED MODE

- docker logs <CONTAINER_NAME>

  - retrieves the output / logs written by the container

- docker logs -f <CONTAINER_NAME>

  - 'flag f' - Furture logs

  - retrieves the output / logs written by the container and attach the container to listen for the future logs from the container

- docker rmi <IMAGE_ID_1> [ <IMAGE_ID_2>,.....]

  - removes the docker images identifed by the image ids.

  - An image cannot be deleted by rmi command if it is used either by a STOPPED or RUNNING container.

- docker image prune

- removes all the unused images (not used by any running or stopped containers)

- docker rm <CONTAINER_NAME>

- docker container prune

  - removes the stopped containers. Running containers cannot be removed.

- docker run -d -p 3000:80 --rm <IMAGE_ID>

  - "flag --rm" removes the container automatically when the container is stopped

- docker image inspect <IMAGE_NAME>

- The Docker command "EXPORT <PORT>" documents the port that we are using inside the container. This can be verified when we inspect the image using the inspect command. Refer the image [01.Inspecting_Images.png]

- docker cp <LOCAL_FILE_PATH> <CONTAINER_NAME>:\<CONTAINER_PATH>

  - copies the files from the local path to the container.

  - use case:

    - Application Configuration files can be copied to container from the local

- docker cp <CONTAINER_NAME>:\<CONTAINER_PATH> <LOCAL_FILE_PATH>

  - copies the files from the container to the local path.

  - use case:

    - Logs written by the Container can be copied to the local path (in the host)
