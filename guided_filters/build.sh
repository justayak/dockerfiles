if [ -d ".DONTADDfgf" ]; then
    git -C .DONTADDfgf pull
else
    git clone https://github.com/justayak/fast_guided_filters.git .DONTADDfgf
fi
docker build --tag="justayak/guided_filters" .
