FROM		codercom/code-server

EXPOSE 		8080
WORKDIR 	/root/coder
VOLUME		/root/coder
ENTRYPOINT 	["dumb-init", "fixuid", "-q", "/usr/local/bin/code-server", "--host", "0.0.0.0", "."]


