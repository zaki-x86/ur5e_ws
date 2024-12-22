SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd -P )
PKG_DIR=$(builtin cd $SCRIPT_DIR && dirname $(pwd -P))
MODELS_DIR=$(echo $PKG_DIR/meshes)


mkdir ~/.gazebo/models/ur5e_sim -p
cp -r $MODELS_DIR ~/.gazebo/models/ur5e_sim

# Export the gazebo model path
export GAZEBO_MODEL_PATH=$GAZEBO_MODEL_PATH:$HOME/.gazebo/models