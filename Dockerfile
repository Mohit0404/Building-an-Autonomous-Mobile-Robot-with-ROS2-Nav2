FROM osrf/ros:humble-desktop-full

# Set environment variables
ENV TURTLEBOT3_MODEL=waffle
ENV LIBGL_ALWAYS_SOFTWARE=1

# Install additional dependencies
RUN apt-get update && apt-get install -y \
    ros-humble-navigation2 \
    ros-humble-nav2-bringup \
    ros-humble-turtlebot3-gazebo \
    ros-humble-turtlebot3-simulations \
    ros-humble-slam-toolbox \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Create workspace
WORKDIR /ros2_ws

# Setup entrypoint
COPY ./setup.sh /setup.sh
RUN chmod +x /setup.sh

ENTRYPOINT ["/bin/bash", "-c", "source /opt/ros/humble/setup.bash && exec \"$@\"", "--"]
CMD ["bash"]
