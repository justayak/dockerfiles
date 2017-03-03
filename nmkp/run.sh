xhost +
docker run --privileged --name="pkmn" -it -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix justayak/nmkp /bin/bash
