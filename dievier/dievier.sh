docker build --no-cache -t justayak/dievier_page .
docker run -p 49160:8080 -d justayak/dievier_page
