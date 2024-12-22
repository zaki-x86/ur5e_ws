# UR5e Workstation

## Packages

- `ur5e_sim` generates robot description and runs gazebo simulation.
- `ur5e_moveit_config` generated moveit configurations for the robot.
- `movetest` a simple test code that gives a target post to the arm to execute.

## How to start

- Build the image while standing at the root directory:

```bash
docker compose -f docker/compose.yml build
```

- Run the container:

```
docker compose -f docker/compose.yml up -d
```

> Container will run in daemon mode.

- Access the container:

```
docker exec -it ur5e_workstation bash
```

- Build and source:

```
colcon build
```

Then, 

```
. install/setup.sh
```

- Start the demo launch to plan motion:

```
ros2 launch ur5e_moveit_config demo.launch.py
```
