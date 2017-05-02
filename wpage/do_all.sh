if [ -d "DONTADD_wedding" ]; then
    git -C DONTADD_wedding pull
else
    git clone https://github.com/mairaladeira/wedding.git DONTADD_wedding
    (cd DONTADD_wedding && git checkout wedding2)
    echo "Enter new password for admin user"
    read input_pwd
    echo "new password: $input_pwd"
    echo -e "$input_pwd" >> DONTADD_wedding/password
    (cd DONTADD_wedding/scripts && python3 generate_db2.py)
    (cd DONTADD_wedding/scripts && python3 generate_urls.py)
fi
docker build -t wpage .
docker run -p 49163:5000 -d --name="wedding_page" wpage
