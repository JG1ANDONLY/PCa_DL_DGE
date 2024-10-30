#!/bin/sh

source ~/.bashrc
jupyter nbconvert --to notebook --execute one_hot_encoding.ipynb --inplace --ExecutePreprocessor.kernel_name=python3 > ../../log/one_hot_encoding_execution_log.txt 2>&1
gzip ../../result/one_hot_encoding/gene_id_label_ohe.pkl
echo "done"
