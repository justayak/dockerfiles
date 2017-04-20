xhost +
docker run --privileged -it --name="hrobots" -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=":0.0" justayak/humanoid_robotics /bin/bash
