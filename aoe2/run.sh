xhost +
docker run --privileged -it --name="aoe2" -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=":0.0" justayak/aoe2 /bin/bash

