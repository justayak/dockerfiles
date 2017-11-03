xhost +
docker run --privileged -it --name="cabbage" -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=":0.0" justayak/cabbage /bin/bash
