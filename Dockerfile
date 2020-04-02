FROM	toru2220/code-server:scrapy

USER    root

RUN     apt-get update && \
        apt-get install -y --no-install-recommends openjdk-11-jdk && \
        rm -rf /var/lib/apt/lists/*

