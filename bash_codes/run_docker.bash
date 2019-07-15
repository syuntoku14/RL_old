docker run -it --rm \
	--net=host \
	-e DISPLAY=$DISPLAY \
	-v /home/syuntoku14/.Xauthority:/root/.Xauthority:rw \
	-v /home/syuntoku14/RL:/root/RL \
	-v /home/syuntoku14/osim-rl/bash_codes:/root/bash_codes \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	--entrypoint=/bin/bash \
	--shm-size 220G \
	syuntoku/opensim:latest

