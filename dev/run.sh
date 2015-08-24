xhost +
docker run --rm --name="dev" -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=":0.0" -it justayak/dev /bin/bash
