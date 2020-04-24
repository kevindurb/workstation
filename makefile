install:
	ansible-galaxy install -r ./requirements.yaml

pre:
	export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

main: pre
	ansible-playbook -K ./main.yaml
