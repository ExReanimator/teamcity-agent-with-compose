FROM jetbrains/teamcity-agent:EAP-linux-sudo

USER root
RUN curl -L "https://github.com/docker/compose/releases/download/1.28.6/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose

USER buildagent
