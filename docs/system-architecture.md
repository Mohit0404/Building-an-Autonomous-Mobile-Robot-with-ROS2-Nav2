# System Architecture

The following diagram illustrates the high-level system architecture of the autonomous mobile robot.

```mermaid
graph TD
    subgraph "Simulation (Gazebo)"
        Physics[Physics Engine]
        Sensors[Virtual Sensors: LiDAR, IMU, Odometry]
        Robot[TurtleBot3 Waffle]
    end

    subgraph "ROS2 Humble Middleware"
        TF[TF2 Transform Tree]
        Topics[ROS2 Topics /cmd_vel, /scan, /odom]
    end

    subgraph "Navigation Stack (Nav2)"
        BT[Behavior Tree Navigator]
        Planner[Global Planner]
        Controller[Local Planner / Controller]
        Costmaps[Global & Local Costmaps]
    end

    subgraph "Localization & Mapping"
        SLAM[SLAM Toolbox]
        AMCL[AMCL Localization]
    end

    Sensors --> Topics
    Topics --> SLAM
    SLAM --> AMCL
    AMCL --> TF
    TF --> Costmaps
    Costmaps --> Planner
    Planner --> BT
    BT --> Controller
    Controller --> Topics
    Topics --> Robot
```

## Components Explanation

- **Gazebo**: Provides the simulated environment and robot physics.
- **Nav2**: The brain of the navigation system, handling path planning and obstacle avoidance.
- **SLAM Toolbox**: Used for creating the map of the environment.
- **AMCL**: Uses Particle Filter to localize the robot within a known map.
- **TF2**: Manages the coordinate transformations between different frames (e.g., `map` -> `odom` -> `base_link`).
