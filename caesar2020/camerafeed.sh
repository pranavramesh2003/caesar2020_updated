#!/usr/bin/sh
sshpass -p "nvidia" ssh -o StrictHostKeyChecking=no nvidia@10.42.0.51 'bash -c "python3 ~/Anveshak/camerafeed.py"'

