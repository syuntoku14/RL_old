run_docker() {
	docker run -it --rm \
		-p 6080:6080 \
		-p 5000:5000 \
		-v /home/digital/RL:/root/RL \
		-v /home/digital/rl_trainer:/root/rl_trainer \
		-w /root \
		--shm-size 16G \
		--entrypoint=/bin/bash \
		syuntoku/rl:ray
		#--link mongo_db \
		#--net sacred_omniboard \
}

run_docker_sacred() {
	docker run -it --rm \
		-p 6080:6080 \
		-p 5000:5000 \
		-v /home/digital/RL:/root/RL \
		-v /home/digital/rl_trainer:/root/rl_trainer \
		-w /root \
		--link mongo_db \
		--net sacred_omniboard \
		--shm-size 16G \
		--entrypoint=/bin/bash \
		syuntoku/rl:ray
}

getopts "s" OPT
case $OPT in
	s ) 	echo "Support sacred"
		run_docker_sacred ;;
	? )	echo "No sacred"
		run_docker ;;
esac
