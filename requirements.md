# System Requirements

This project is designed to run on **Ubuntu 22.04 LTS (Jammy Jellyfish)** with **ROS2 Humble Hawksbill**.

## ROS2 Packages
Ensure the following ROS2 packages are installed:

- `ros-humble-desktop`
- `ros-humble-navigation2`
- `ros-humble-nav2-bringup`
- `ros-humble-turtlebot3-gazebo`
- `ros-humble-turtlebot3-simulations`
- `ros-humble-slam-toolbox`
- `ros-humble-rmw-cyclonedds-cpp` (Recommended)

## External Dependencies
- **Gazebo 11**
- **RViz2**

## Installation Command
```bash
sudo apt update
sudo apt install -y \
  ros-humble-navigation2 \
  ros-humble-nav2-bringup \
  ros-humble-turtlebot3-gazebo \
  ros-humble-turtlebot3-simulations \
  ros-humble-slam-toolbox \
  ros-humble-rmw-cyclonedds-cpp
```
