FROM	codercom/code-server:latest

ENV 	PASSWORD password

WORKDIR /root/project
VOLUME	/root
VOLUME	/data

USER	root
ENTRYPOINT code-server --host 0.0.0.0 .
