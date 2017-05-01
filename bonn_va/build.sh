if [ -d ".DONTADD_uni_bonn" ]; then
    git -C .DONTADD_uni_bonn pull
else
    git clone https://github.com/justayak/uni_bonn.git .DONTADD_uni_bonn
fi
docker build --tag="bonn_va" .
