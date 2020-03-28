FROM	codercom/code-server:v2

ENV 	PASSWORD password

WORKDIR /root/project
VOLUME	/root
VOLUME	/data

USER	root
ENTRYPOINT code-server --host 0.0.0.0 .
