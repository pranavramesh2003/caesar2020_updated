#!/usr/bin/sh
sshpass -p "nvidia" ssh -o StrictHostKeyChecking=no nvidia@10.42.0.51 'bash -c "source /opt/ros/melodic/setup.bash && rosrun rosserial_python serial_node.py /dev/ttyUSB0 _baud:=9600 __name:=rosserial_drive"'
