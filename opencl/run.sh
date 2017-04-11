xhost +
docker run --privileged -it --name="opencl_" -e DISPLAY --net=host  justayak/opencl /bin/bash
