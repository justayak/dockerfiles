xhost +
docker run --privileged -it --name="cv2hpp" -e DISPLAY --net=host  justayak/cv2hpp /bin/bash
