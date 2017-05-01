xhost +
docker run --privileged -it --name="bonn_g" -e DISPLAY --net=host  justayak/bonn_graphics /bin/bash
