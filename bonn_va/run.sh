xhost +
docker run --privileged -it --name="bonn_va" -e DISPLAY --net=host  bonn_va /bin/bash
