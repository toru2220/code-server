FROM		codercom/code-server

EXPOSE 		8080
USER 		coder
WORKDIR 	/home/coder
VOLUME		/home/coder
ENTRYPOINT 	["dumb-init", "fixuid", "-q", "/usr/local/bin/code-server", "--host", "0.0.0.0", "."]


