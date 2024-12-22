#!/bin/bash

set -e

# Get the abs path of the current directory where the script resides
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd -P )
WS_DIR=$(builtin cd $SCRIPT_DIR && dirname $(pwd -P))
PKG_NAME=$(echo $1)
BUILD_TYPE=$(echo $2)

echo Current directory: $SCRIPT_DIR
echo Workspace directory: $WS_DIR
echo Package name: $PKG_NAME
echo Create package in directory: $( echo $WS_DIR/src/$PKG_NAME )

ros2 pkg create \
               --description "ROS2 package for control and simulation of UR5e Robot" \
               --maintainer-name "Mohamed Zaki" \
               --maintainer-email "zaki.x86@gmail.com" \
               --license "MIT" \
               --build-type "$BUILD_TYPE" \
               --destination-directory $( echo $WS_DIR/src ) \
               $PKG_NAME

cd $WS_DIR/src/$PKG_NAME

mkdir launch meshes docs urdf scripts
echo "# ${PKG_NAME/_/ }" > README.md
