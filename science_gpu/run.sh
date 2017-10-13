#docker run --rm --name="science" -it -p 8888:8888 justayak/science /bin/bash
nvidia-docker run --privileged --name="science_gpu" -it -v /home/shared:/home/shared justayak/science_gpu /bin/bash
