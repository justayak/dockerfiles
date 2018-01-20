xhost +
docker run --privileged -it --name="cabbage-test" -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=":0.0" justayak/cabbage-test /bin/bash
