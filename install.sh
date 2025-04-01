#!/bin/bash

INST=$HOME/.config

echo "What do you want to install?"
echo "[all] [nvim] [ala]"
read input

if [ $input == "all" ]
then
    echo "you said all"
elif [ $input == "nvim" ]
then
    echo "you said nvim"
elif [ $input == "ala" ]
then
    echo "you said ala"
else
    echo "not a word"
fi

echo "linking NVIM to" $INST/nvim

if [ ! -d "$INST/nvim" ]
then
    mkdir $INST/nvim
fi

#stow ./nvim -t $INST/nvim
