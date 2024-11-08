#!/bin/bash
# DESeq2 Jupyter Notebook Execution Bash Script with Progress Tracking
# Author: Zhongyi (James) Guo
# Date: 11/7/2024

source ~/.bashrc

# Define log file path
LOGFILE="../../log/deseq2_execution_log.txt"
NOTEBOOKS=("preprocessing.ipynb" "diff_gene_expr.ipynb" "sequence_fetching.ipynb")
TOTAL=${#NOTEBOOKS[@]}

# Initialize counter for progress
counter=0

# Function to execute Jupyter notebook and log the process
run_notebook() {
  local notebook=$1
  counter=$((counter + 1))
  local percent=$((counter * 100 / TOTAL))
  echo "[$percent%] Starting ${notebook}..." | tee -a $LOGFILE
  jupyter nbconvert --to ${notebook} --execute ${notebook} --inplace 2>&1 | tee -a $LOGFILE
}

# Execute each notebook with progress logging
for notebook in "${NOTEBOOKS[@]}"; do
  run_notebook "$notebook"
done

echo "[100%] Done." | tee -a $LOGFILE
