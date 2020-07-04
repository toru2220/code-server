FROM	toru2220/code-server:openjdk

USER    root

RUN	apt-get update && \
	apt-get install -y --no-install-recommends npm

RUN     pip3 install Appium-Python-Client pytest pytest-xdist chromedriver-binary mutagen pillow python-dateutil

RUN	npm install appium-chromedriver
 
