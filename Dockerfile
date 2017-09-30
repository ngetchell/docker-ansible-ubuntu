FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python-pip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN pip install ansible \
                ansible-lint \
    && rm -rf ~/.cache/*

CMD ["/bin/bash"]