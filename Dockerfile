FROM hassioaddons/vscode-amd64:2.9.1

RUN find /etc/cont-init.d/ -type f -not -name 'code-server.sh' -delete && \
    sed -i '/^export HASS_/d' /etc/services.d/code/run && \
    apt update && \
    apt install -y python3-dev python3-pip python3-venv python3-wheel
