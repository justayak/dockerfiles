if [ -d ".DONTADDcv2hpp" ]; then
    git -C .DONTADDcv2hpp pull
else
    git clone https://github.com/justayak/cv2hpp.git .DONTADDcv2hpp
fi
docker build --tag="justayak/cv2hpp" .
