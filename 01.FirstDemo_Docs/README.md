#### builds the image based on the Dockerfile

docker build .

#### lists all the docker images

docker images

#### runs the container - published on localhost port 3000

docker run -p <LOCAL_HOST_PORT>:<PORT_INSIDE_THE_CONTAINER> <IMAGE_ID>

docker run -p 3000:3000 <IMAGE_ID>

#### lists all the running containers

docker ps

#### stops a running container

docker stop <CONTAINER_ID>
