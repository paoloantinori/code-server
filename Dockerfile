FROM fedora
EXPOSE 8080
WORKDIR /root
CMD [ "code-server", "--auth", "none", "--bind-addr", "0.0.0.0:8080" ]
RUN dnf install -y java-11-openjdk-headless net-tools iproute https://github.com/cdr/code-server/releases/download/v3.4.1/code-server-3.4.1-amd64.rpm
RUN curl -LO 'https://download.jboss.org/jbosstools/vscode/snapshots/vscode-didact/vscode-didact-0.1.16-165.vsix' 
RUN curl -LO 'https://download.jboss.org/jbosstools/vscode/snapshots/vscode-apache-camel/vscode-apache-camel-0.0.26-286.vsix'
RUN curl -LO 'https://download.jboss.org/jbosstools/vscode/snapshots/vscode-project-initializer/project-initializer-0.0.10-584.vsix'
RUN code-server --install-extension redhat.vscode-yaml
RUN code-server --install-extension redhat.java
RUN code-server --install-extension redhat.vscode-xml



