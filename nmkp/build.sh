if [ -d ".DONTADD_pkmn" ]; then
    git -C .DONTADD_pkmn pull
else
    git clone https://github.com/justayak/pkmn.git .DONTADD_pkmn
fi
docker build --tag="justayak/nmkp" .
