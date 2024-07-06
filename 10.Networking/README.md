# Container Networking

## Types of Network Requests when using Containers

1. Requests from Container to WWW (Internet)
2. Requests from Container to Docker host (a service hosted in the local host)
3. Requests from one container to another container.

By default,

1. Request from the Container to WWW (Internet) works.

2. Request from the Containers to the Localhost (services running in the localhost when accessed using localhost domain)) will fail.

   **mongodb://localhost:27017/swfavorites** - here mongodb is running in the docker host.

   To make this work, we have to use `host.docker.interal`

   **mongodb://host.docker.interal:27017/swfavorites** - here mongodb is running in the docker host.

3. To Test Container to Container Communication.

   _Without setting up any network. (not recommended though)_

   - Run mongo as container
   - `docker run -d --name mongodb mongo`

   - Inspect the mongodb container to get the IPAddress from NetworkSettings and use it in the mongodb connectionstring
   - `docker container inspect mongodb`
   - `mongodb://172.17.0.2:27017/swfavorites`

```json
 "NetworkSettings": {
            "Bridge": "",
            "SandboxID": "0686861ca865b29f554b592ca89ea9b17b9da2026de4fd84a43c326d7ba84052",
            "HairpinMode": false,
            "LinkLocalIPv6Address": "",
            "LinkLocalIPv6PrefixLen": 0,
            "Ports": {
                "27017/tcp": null
            },
            "SandboxKey": "/var/run/docker/netns/0686861ca865",
            "SecondaryIPAddresses": null,
            "SecondaryIPv6Addresses": null,
            "EndpointID": "a028dbcd1d94d03a70b01f6cf0a15e271c879887a0f9a2147609534c65b81186",
            "Gateway": "172.17.0.1",
            "GlobalIPv6Address": "",
            "GlobalIPv6PrefixLen": 0,
            "IPAddress": "172.17.0.2",
            "IPPrefixLen": 16,
            "IPv6Gateway": "",
            "MacAddress": "02:42:ac:11:00:02",
            "Networks": {
                "bridge": {
                    "IPAMConfig": null,
                    "Links": null,
                    "Aliases": null,
                    "NetworkID": "eeda18a81462e76c8c5f7bfea057dde74ff6c26b979114fec3d21b2d19f112b0",
                    "EndpointID": "a028dbcd1d94d03a70b01f6cf0a15e271c879887a0f9a2147609534c65b81186",
                    "Gateway": "172.17.0.1",
                    "IPAddress": "172.17.0.2",
                    "IPPrefixLen": 16,
                    "IPv6Gateway": "",
                    "GlobalIPv6Address": "",
                    "GlobalIPv6PrefixLen": 0,
                    "MacAddress": "02:42:ac:11:00:02",
                    "DriverOpts": null
                }
            }
        }
```

### Creating Networks to connect Containers

- `docker network create <NETWORK_NAME>`

- `docker network create myappnetwork`

- `docker network ls`

- `docker run -d --name mongodb --network myappnetwork mongo`

- `docker run -d -p 3000:3000 --name myapp --network myappnetwork myappimage:1`
