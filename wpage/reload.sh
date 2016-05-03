if [ -d "DONTADD_wedding" ]; then
    echo "trying to update wedding page"
    ps_wedding_page="$(docker ps | grep wedding_page)"
    ps_wedding_page_size=${#ps_wedding_page}
    if [ $ps_wedding_page_size -eq 0 ]; then
        echo "There is no running wedding_page instance.. I am stoping now.."
    else
        git -C DONTADD_wedding pull
        echo "Running wedding_page found.. reloading..."
        docker cp wedding_page:/home/wedding/wedding.db DONTADD_wedding/wedding.db
        echo "Old database is saved..."
        docker kill wedding_page
        docker rm wedding_page
        docker build -t wpage .
        echo "New page is build"
        docker run -p 49163:8080 -d --name="wedding_page" wpage
        echo "New page is up"
    fi
else
    echo "ERROR: cannot find local git repo... I am not updating.."
fi
