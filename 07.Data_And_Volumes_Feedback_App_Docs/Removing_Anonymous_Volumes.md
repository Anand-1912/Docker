## Removing Anonymous Volumes

The Anonymous volumes are removed automatically, when a container is removed.

This happens when you start / run a container with the --rm option.

If you start a container without that option, the anonymous volume would **NOT** be removed, even if you remove the container (with _docker rm_ ...).

Still, if you then re-create and re-run the container (i.e. you run docker run ... again), a new Anonymous volume will be created. So even though the anonymous volume wasn't removed automatically, it'll also not be helpful because a different anonymous volume is attached the next time the container starts (i.e. you removed the old container and run a new one).

Now you just start piling up a bunch of unused anonymous volumes - you can clear them via **docker volume rm VOL_NAME** or **docker volume prune**
