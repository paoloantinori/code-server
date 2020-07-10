FROM fedora
EXPOSE 8080
ADD https://github.com/cdr/code-server/releases/download/v3.4.1/code-server-3.4.1-amd64.rpm /opt
RUN dnf install -y java-11-openjdk-headless /opt/code-server-3.4.1-amd64.rpm
CMD [ "code-server" ]


