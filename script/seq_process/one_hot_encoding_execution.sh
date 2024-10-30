#!/bin/sh

source ~/.bashrc
jupyter nbconvert --to notebook --execute one_hot_encoding.ipynb --inplace > ../../log/one_hot_encoding_execution_log.txt 2>&1
echo "done"