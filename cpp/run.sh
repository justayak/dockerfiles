xhost +
docker run --privileged -it --name="cpp" -e DISPLAY --net=host  justayak/cpp /bin/bash
