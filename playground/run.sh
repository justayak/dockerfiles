xhost +
docker run --privileged --name="playground" -it -v /home/$USER/shared_playground:/home/shared -e DISPLAY --net=host justayak/playground /bin/bash
