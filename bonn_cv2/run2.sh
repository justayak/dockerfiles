xhost +
docker run --privileged -it --name="bonn_cv2" -e DISPLAY --net=host  justayak/bonn_cv2_backup /bin/bash
