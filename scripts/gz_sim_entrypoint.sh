sudo colcon build
. /usr/share/gazebo/setup.sh
. /home/ubuntu/ws/install/setup.sh
bash /home/ubuntu/ws/src/ur5e_sim/scripts/setup_models.sh
ros2 launch ur5e_sim gz_sim.launch.py
