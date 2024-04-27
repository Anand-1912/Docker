1. docker run -it <IMAGE_ID>

- creates a new container from the image and runs it in an Interactive mode.

2. docker stop <CONTAINER_NAME>

3. docker start -a -i <CONTAINER_NAME>

   - "flag -a" is required as the "start" command by default starts the stopped container in Detached mode

   - "flag -i" starts the container in Interactive mode so that we can input data into the container.
