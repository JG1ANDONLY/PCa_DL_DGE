#!/bin/sh
# Script to Execute One Hot Encoding Jupyter Notebook
# Author: Zhongyi (James) Guo
# Last Updated: 11/07/2024

# Load user-specific environment settings
source ~/.bashrc

# Log file for execution
LOG_FILE="../../log/one_hot_encoding_execution_log.txt"

# Log the start time
echo "[$(date +'%Y-%m-%d %H:%M:%S')] Starting execution of one_hot_encoding.ipynb..." >> $LOG_FILE

# Execute the notebook with Jupyter nbconvert
jupyter nbconvert --to notebook --execute one_hot_encoding.ipynb --inplace --ExecutePreprocessor.kernel_name=python3 >> $LOG_FILE 2>&1

# Check for errors and log the completion status
if [ $? -eq 0 ]; then
    echo "[$(date +'%Y-%m-%d %H:%M:%S')] Execution completed successfully." >> $LOG_FILE
else
    echo "[$(date +'%Y-%m-%d %H:%M:%S')] Execution encountered an error." >> $LOG_FILE
fi
