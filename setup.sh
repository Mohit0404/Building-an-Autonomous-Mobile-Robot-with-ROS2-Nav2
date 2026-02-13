#!/bin/bash

# ROS2 & Gazebo Environment Setup for WSL2
export LIBGL_ALWAYS_SOFTWARE=1
export GAZEBO_IP=127.0.0.1
export GAZEBO_MASTER_URI=http://127.0.0.1:11345
export TURTLEBOT3_MODEL=waffle

# Source ROS2 Humble
if [ -f /opt/ros/humble/setup.bash ]; then
    source /opt/ros/humble/setup.bash
    echo "ROS2 Humble sourced successfully."
else
    echo "Warning: ROS2 Humble not found at /opt/ros/humble/setup.bash. Please ensure ROS2 Humble is installed."
fi

# Source workspace if it exists
if [ -f install/setup.bash ]; then
    source install/setup.bash
    echo "Workspace sourced successfully."
fi
