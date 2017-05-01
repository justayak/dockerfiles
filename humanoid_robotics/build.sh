if [ -d ".temp/group-17" ]; then
    git -C .temp/group-17 pull
else
    git clone https://tanke@gitlab.igg.uni-bonn.de/hr-ss17/group-17.git .temp/group-17
fi

docker build --tag="justayak/humanoid_robotics" .
