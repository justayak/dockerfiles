xhost +
docker run --privileged -it --name="opencv_" -e DISPLAY --net=host  justayak/opencv /bin/bash
