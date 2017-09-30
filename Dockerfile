FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python-pip \
    && apt-get clean autoclean \
    && apt-get autoremove -y \
    && rm -rf /var/lib/{apt,dpkg,cache,log}/

RUN pip install ansible \
                ansible-lint \
    && rm -rf ~/.cache/*

CMD ["/bin/bash"]