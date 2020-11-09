FROM	toru2220/code-server:python3

USER    root

RUN     apt-get update && \
        apt-get install -y --no-install-recommends wget curl unzip imagemagick ffmpeg python3-dev python-twisted libxml2-dev python-lxml python-requests python3-setuptools && \
        rm -rf /var/lib/apt/lists/*
RUN     pip3 install pymongo urllib3 requests scrapy mpegdash m3u8 twython pillow slackweb lxml slack_log_handler scrapy-splash selenium pathvalidate fake-useragent chromedriver-binary==86.0.4240.22

COPY	requirements.txt .
RUN 	apt-get update && \
        pip3 install --upgrade pip && \
        pip3 install -r requirements.txt

