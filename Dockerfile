FROM	toru2220/code-server:latest

USER	root
RUN     apt-get update && \
        apt-get -y install python3-pip
