# Install kubectl
FROM centos

RUN curl -L -o/usr/local/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/v1.15.3/bin/linux/amd64/kubectl && \
    curl -L -o/usr/local/bin/kubectl-kudo https://github.com/kudobuilder/kudo/releases/download/v0.7.0/kubectl-kudo_0.7.0_linux_x86_64 && \
    chmod +x /usr/local/bin/kubectl-kudo /usr/local/bin/kubectl

COPY tests tests

COPY kudo-test.yaml kudo-test.yaml
