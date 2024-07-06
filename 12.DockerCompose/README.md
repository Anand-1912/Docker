# Docker Compose

- Docker compose simplifies the Multi Container setup.

- Docker Compose uses a YAML configuration file and orchestration commands to build, run and stop multiple containers.

  `docker-compose up`

  - This command creates the default network, volumes specified in the compose file, the containers and start the containers.

- **_Note_**: Docker Compose does **NOT** replace Dockerfiles for Custom images. It also does not replace Images or Containers.

- Docker Compose is not suitable for managing multiple containers running in different hosts (machines).

- Docker compose by default run services in attached mode and also it creates a network.

- To start the services in detached mode `docker-compose up -d`

- `docker-compose down` is used to stop and delte the containers/services. It also deletes the network but not the volumes.

- `docker-compose down -v` - the _v flag_ has to be used to remove the volumes along with the services and network.

- `docker-compose build` - to just build the custom images _(and not start the containers)_ mentioned in the compose file (using **build** key)

- `docker-compose up --build` - force the docker compose to rebuild the custom images defined in the configuration before starting the containers
