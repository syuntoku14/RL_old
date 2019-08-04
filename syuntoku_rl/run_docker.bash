docker run -it --rm \
	-p 6080:6080 \
	-p 5000:5000 \
	-v /home/digital/RL:/root/RL \
	-v /home/digital/rl_trainer:/root/rl_trainer \
	-w /root \
	--entrypoint=/bin/bash \
	syuntoku/rl:chainer-latest


