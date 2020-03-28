FROM	codercom/code-server:v2

WORKDIR /vscode
VOLUME	/vscode
VOLUME	/data

ENTRYPOINT ["code-server", "--host", "0.0.0.0"]
