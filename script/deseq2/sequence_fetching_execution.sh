source ~/.bashrc
jupyter nbconvert --to notebook --execute sequence_fetching.ipynb --inplace > ../../log/sequence_fetching_execution_log.txt 2>&1
