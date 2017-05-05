xhost +
docker run --privileged -it --name="bonn_gpu" -e DISPLAY --net=host  justayak/bonn_gpulab /bin/bash
