1. docker run node

   - Here **node** is the prebuilt image pulled from Docker Hub registry

2. By default, docker runs container in isolated mode (i.e) from the host.

3. docker run -it node

```
   The -it flag in the docker run command stands for two separate flags:

-i stands for "interactive." It allows you to interact with the container's STDIN (standard input). This means you can send input to commands running inside the container, and you can receive output from those commands.
-t stands for "pseudo-TTY." It allocates a pseudo-terminal or pseudo-TTY, which is a terminal emulation that allows you to interact with the container's shell. This ensures that you have a terminal-like interface for executing commands within the container.
```
