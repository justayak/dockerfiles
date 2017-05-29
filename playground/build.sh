if [ -d "DONTADD_privateplayground" ]; then
    git -C DONTADD_privateplayground pull
else
    git clone https://github.com/justayak/private_playground.git DONTADD_privateplayground
fi

docker build --tag="justayak/playground" .
