deployment=${1:-"cpu"}

export DISPLAY=:0.0
xhost +local:docker
docker compose -f docker/compose.yml build ur5e_workstation_$deployment
docker compose -f docker/compose.yml up ur5e_workstation_$deployment -d