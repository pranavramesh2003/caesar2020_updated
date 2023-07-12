#!/bin/bash
trap '$SHELL' SIGINT
while :
do
	ping 10.42.0.51
done
