FROM	toru2220/code-server:openjdk

USER    root

RUN     pip3 install Appium-Python-Client pytest pytest-xdist

