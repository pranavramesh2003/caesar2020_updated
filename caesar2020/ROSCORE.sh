#!/bin/bash
sshpass -p "nvidia" ssh -o StrictHostKeyChecking=no nvidia@10.42.0.51 'bash -c "source /opt/ros/melodic/setup.bash && roscore"'
