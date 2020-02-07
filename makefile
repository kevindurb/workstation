CC=ansible-playbook

install:
	ansible-galaxy install -r ./requirements.yaml

pre:
	export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

main: pre
	$(CC) -K ./main.yaml
