#!/bin/bash
sshpass -p "nvidia" ssh -o StrictHostKeyChecking=no nvidia@10.42.0.51 'bash -c "source /opt/ros/melodic/setup.bash && export ROS_IP=10.42.0.1 && cd caesar2020/ && . ./devel/setup.bash && rosrun arm run.py"'
