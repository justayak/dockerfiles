if [ -d "DONTADD_wedding" ]; then
    git -C DONTADD_wedding pull
else
    git clone https://github.com/mairaladeira/wedding.git DONTADD_wedding
    echo "Enter new password for admin user"
    read input_pwd
    echo "new password: $input_pwd"
    echo -e "$input_pwd" >> DONTADD_wedding/password
    (cd DONTADD_wedding/scripts && python3 generate_db.py)
    (cd DONTADD_wedding/scripts && python3 generate_urls.py)
fi
docker build -t wpage .
<<<<<<< HEAD
docker run -p 49163:5000 -d wpage
=======
docker run -p 49163:8080 -d --name="wedding_page" wpage
>>>>>>> 36501450c85b0b00119f6a9a4ad3469a0d626bd8
