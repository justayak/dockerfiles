xhost +
docker run --privileged -it --name="biotrack" -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=":0.0" justayak/biotracker-dev /bin/bash
