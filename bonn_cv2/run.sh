xhost +
docker run --privileged -it --name="bonn_cv2" -e DISPLAY --net=host  bonn_cv2 /bin/bash
