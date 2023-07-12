#!/usr/bin/sh
sshpass -p "nvidia" ssh -Y -o StrictHostKeyChecking=no nvidia@10.42.0.51 'bash -c "source /opt/ros/melodic/setup.bash && export ROS_IP=10.42.0.1 && killall rosmaster"'

