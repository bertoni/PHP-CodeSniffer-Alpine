PHP CODE SNIFFER WITH PHP 7.0 + Alpine
======================================

Build image
--------------------

Build from `Dockerfile`:

	Inside dockerfile, change your username, user UID and GID. (You can know this values with command `cat /etc/passwd | grep $(whoami)`)

	`docker build --no-cache -t abertoni/phpcs .`



Usage
--------------------

	Run phpcs like command

	docker run --rm -it --user abertoni -v /path/your/files:/path/scripts abertoni/phpcs phpcs --version
	
	
	You can define a bash alias for run phpcs
	
	echo "alias phpcs='docker run --rm -it --user abertoni -v /path/your/files:/path/scripts abertoni/phpcs phpcs'" >> ~/.bashrc
	source ~/.bashrc
	
