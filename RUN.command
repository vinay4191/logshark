#!/bin/zsh
# Get the executed path
MY_PATH=$(dirname "$0")

# For loop through all the zip files
for ziplog in "$MY_PATH"/input/*.zip; do
    # Add log information
    echo "Processing file: "+"$ziplog" >> "$MY_PATH"/logs/runresults.log
    echo "Starttime: $(date "+%FT%T")" >> "$MY_PATH"/logs/runresults.log
    # Run the docker command
    docker run --rm -v "$ziplog":/app/logs.zip -v "$MY_PATH"/output:/app/Output -v "$MY_PATH"/LogSharkConfig.json:/app/Config/LogSharkConfig.json logshark:latest logs.zip --plugins "ALL" -p |& tee -a "$MY_PATH"/logs/runresults.log
    # Move the processed file to archive
    mv "$ziplog" "$MY_PATH"/input/archive/
    # End time logging
    echo "Endtime: $(date "+%FT%T")" >> "$MY_PATH"/logs/runresults.log
done