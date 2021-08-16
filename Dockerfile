FROM	codercom/code-server:latest

USER    root

RUN     apt-get update && \
        apt-get -y --no-install-recommends install python3-pip openjdk-11-jdk npm nodejs fonts-ipafont python3-setuptools

RUN     npm install appium-chromedriver

COPY	requirements.txt .

RUN	pip3 install --upgrade pip

RUN 	apt-get update && \
        pip3 install -r requirements.txt

ENV 	PASSWORD password

WORKDIR /root/project
VOLUME	/root
VOLUME	/data

ENTRYPOINT code-server --host 0.0.0.0 .
