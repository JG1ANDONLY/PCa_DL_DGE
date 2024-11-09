#!/bin/sh
# Script to Execute CNN Training Jupyter Notebook
# Author: Zhongyi (James) Guo
# Last Updated: 11/08/2024

# Load user-specific environment settings
source ~/.bashrc

# Log file for execution
LOG_FILE="../../log/cnn_training_execution_log.txt"

# Log the start time
echo "[$(date +'%Y-%m-%d %H:%M:%S')] Starting execution of cnn_training.ipynb..." >> $LOG_FILE

# Execute the notebook with Jupyter nbconvert
jupyter nbconvert --to cnn_training --execute cnn_training.ipynb --inplace --ExecutePreprocessor.kernel_name=python3 >> $LOG_FILE 2>&1

# Check for errors and log the completion status
if [ $? -eq 0 ]; then
    echo "[$(date +'%Y-%m-%d %H:%M:%S')] Execution completed successfully." >> $LOG_FILE
else
    echo "[$(date +'%Y-%m-%d %H:%M:%S')] Execution encountered an error." >> $LOG_FILE
fi