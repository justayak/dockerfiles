#docker run --rm --name="science" -it -p 8888:8888 justayak/science /bin/bash
docker run --name="science" -it -v /home/shared:/home/shared justayak/science /bin/bash
