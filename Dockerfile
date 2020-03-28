FROM	toru2220/code-server:latest

USER	root
RUN     apt-get update && \
        apt-get -y --no-install-recommends install python3-pip
