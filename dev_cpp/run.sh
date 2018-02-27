xhost +
docker run --privileged -it --name="cpp" -e DISPLAY --net=host  justayak/dev_cpp /bin/bash
