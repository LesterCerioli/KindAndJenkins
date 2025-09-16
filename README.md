# Kind And Jenkins
 
🚀 Jenkins + Kind Integration for Kubernetes Deployments
This project demonstrates how to integrate Jenkins with Kind (Kubernetes IN Docker) to enable CI/CD pipelines that deploy applications directly into a local Kubernetes cluster.

📦 Overview
Kind is a lightweight tool for running Kubernetes clusters inside Docker containers — perfect for local development and testing. Jenkins is a powerful automation server widely used for building CI/CD pipelines.

By combining Jenkins and Kind, this project enables Jenkins to consume and interact with a Kubernetes cluster running inside a Docker container, allowing automated deployments of containerized applications.

🔧 Key Features
✅ Local Kubernetes cluster provisioned via Kind

✅ Jenkins pipeline configured to deploy into the Kind cluster

✅ No need for external cloud providers — everything runs locally

✅ Compatible with Lens or kubectl for cluster management

✅ Ideal for testing Helm charts, manifests, and microservices before production

🛠️ How It Works
Kind Cluster Setup A Kubernetes cluster is created using Kind inside a Docker container.

Jenkins Configuration Jenkins is configured with access to the Kind cluster via the local kubeconfig file or mounted Docker volumes.

Pipeline Execution Jenkins pipelines use kubectl to apply Kubernetes manifests, deploy containers, and manage services inside the Kind cluster.

Networking Jenkins and Kind communicate via Docker networking. The cluster is exposed to Jenkins either via container IP or by mounting the kubeconfig.
