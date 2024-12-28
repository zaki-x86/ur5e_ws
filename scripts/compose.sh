deployment=${1:-"cpu"}

export DISPLAY=:0.0
xhost +local:docker
docker compose -f docker/compose.yml --profile $deployment build
docker compose -f docker/compose.yml --profile $deployment up -d