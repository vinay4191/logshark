#!/bin/zsh
# Find the path
MY_PATH=$(dirname "$0")
cd "$MY_PATH"
# Create directories
mkdir input
mkdir input/archive
mkdir output
mkdir logs
# Clone and build Logshark
git clone https://github.com/tableau/Logshark.git |& tee "$MY_PATH"/logs/gitclone.txt
cd Logshark
git checkout 43e53bf055de44146570708ddf7d9a5e0a4d319b
docker buildx build --platform linux/amd64 -f LogShark/Dockerfile -t logshark . |& tee "$MY_PATH"/logs/dockerbuild.txt
cd ..
# Copy the OOTB config file
cp "$MY_PATH"/Logshark/LogShark/Config/LogSharkConfig.json .
exit