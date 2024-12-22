export DISPLAY=:0.0
xhost +local:docker
docker run  -it --network=host --env DISPLAY=$DISPLAY  --privileged  \
 --volume="$HOME/.Xauthority:/root/.Xauthority:rw"  \
-v /tmp/.X11-unix:/tmp/.X11-unix --rm --name test_ur5e_ws ur5e_ws:latest