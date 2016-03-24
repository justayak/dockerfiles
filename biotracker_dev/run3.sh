xhost +
docker run --privileged -it --name="biotrack_" -e DISPLAY --net=host  justayak/biotracker_backup /bin/zsh
