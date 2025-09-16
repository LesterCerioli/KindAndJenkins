FROM alpine:3.18

# Install dependencies
RUN apk add --no-cache bash curl docker-cli

# Install Kind
RUN curl -Lo /usr/local/bin/kind https://kind.sigs.k8s.io/dl/v0.20.0/kind-linux-amd64 && \
    chmod +x /usr/local/bin/kind

# Install kubectl
RUN curl -LO "https://dl.k8s.io/release/v1.27.3/bin/linux/amd64/kubectl" && \
    chmod +x kubectl && mv kubectl /usr/local/bin/

# Volume for containerd persistence
VOLUME /var/lib/containerd

# Keep container running interactively
CMD ["/bin/bash"]

