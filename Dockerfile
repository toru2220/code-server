FROM	toru2220/code-server:python3

USER    root

RUN     apt-get update && \
        apt-get install -y --no-install-recommends wget curl unzip imagemagick ffmpeg python3-dev python-twisted libxml2-dev python-lxml python-requests && \
        rm -rf /var/lib/apt/lists/*
RUN     pip3 install pymongo urllib3 requests scrapy mpegdash m3u8 fake-useragent twython mojimoji pillow slackweb lxml slack_log_handler scrapy-splash selenium pathvalidate

USER	coder
