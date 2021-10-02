FROM	codercom/code-server:latest

USER    root

RUN     apt-get update && \
        apt-get -y --no-install-recommends install python3-dev python3-pip wget curl openjdk-11-jdk npm nodejs fonts-ipafont python3-setuptools task-spooler libxml2-dev libxslt1-dev gcc g++ build-essential 

RUN     npm install appium-chromedriver

COPY	requirements.txt .

RUN	pip3 install --upgrade pip setuptools wheel

RUN 	apt-get update && \
        pip3 install -r requirements.txt

ENV 	PASSWORD password

WORKDIR /root/project
VOLUME	/root
VOLUME	/data

ENTRYPOINT code-server --host 0.0.0.0 .
