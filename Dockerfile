FROM	toru2220/code-server:openjdk

USER    root

RUN	apt-get update && \
	apt-get install -y --no-install-recommends npm fonts-ipafont

RUN     pip3 install Appium-Python-Client pytest pytest-xdist chromedriver-binary mutagen pillow python-dateutil scrapy-do wheel

RUN	npm install appium-chromedriver
 
