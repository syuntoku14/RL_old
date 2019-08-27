run_docker() {
	docker run -it --rm \
		-p 6080:6080 \
		-p 5000:5000 \
		-v /home/digital/RL:/root/RL \
		-v /home/digital/avoid_pedestrians:/root/avoid_pedestrians \
		-w /root \
		--name rl \
		--shm-size 16G \
		--entrypoint=/bin/bash \
		syuntoku/rl:latest
		#--link mongo_db \
		#--net sacred_omniboard \
		# --runtime=nvidia \
}

run_docker_sacred() {
	docker run -it --rm \
		-p 6080:6080 \
		-p 5000:5000 \
		-v /home/digital/RL:/root/RL \
		-v /home/digital/avoid_pedestrians:/root/avoid_pedestrians \
		-w /root \
		--link mongo_db \
		--net sacred_omniboard \
		--name rl \
		--shm-size 16G \
		--entrypoint=/bin/bash \
		syuntoku/rl:latest
}

getopts "s" OPT
case $OPT in
	s ) 	echo "Support sacred"
		run_docker_sacred ;;
	? )	echo "No sacred"
		run_docker ;;
esac
