xhost +
docker run --privileged -it --name="guided_filters" -e DISPLAY --net=host  justayak/guided_filters /bin/bash
