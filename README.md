

![image](https://github.com/user-attachments/assets/fdb22d63-832a-4642-90e9-5fcb7d65065c)


Azure Kubernetes Service (AKS) Deployment: Concept & Architecture
This project outlines a robust, automated deployment strategy for containerized applications on Azure. It leverages Infrastructure as Code (IaC) for provisioning, Azure DevOps for CI/CD, and AKS for scalable, containerized application hosting. A key feature is demonstrating secure external access via an NGINX Ingress Controller with TLS routing.

1. Core Idea
The goal is to automate the entire application lifecycle, from provisioning the necessary Azure infrastructure to deploying and managing a "Hello World" application on Kubernetes. This includes setting up secure authentication and encrypted communication for external access.

2. Solution Architecture
The following diagram illustrates the major Azure services involved and their interconnections within this deployment.



3. Key Components & Their Roles
Git Repository: Serves as the single source of truth for all project assets, including infrastructure definitions (Terraform), application source code, and Kubernetes manifests.
Terraform: Our Infrastructure as Code (IaC) tool. It's responsible for declaratively defining and provisioning all the required Azure resources, such as the Resource Group, Azure Container Registry (ACR), and the Azure Kubernetes Service (AKS) cluster.
Azure DevOps Pipelines: This is the heart of our Continuous Integration/Continuous Delivery (CI/CD) process.
CI (Continuous Integration): Builds the application's Docker image and pushes it to ACR.
CD (Continuous Delivery): Applies the Terraform configurations to provision Azure infrastructure, then deploys the containerized application and its Kubernetes resources to the AKS cluster.
Azure Kubernetes Service (AKS): A managed Kubernetes offering that simplifies deploying, managing, and scaling containerized applications. It hosts our "Hello World" application.
Azure Container Registry (ACR): A private, secure Docker image registry. It stores the built Docker images, which AKS pods then pull for deployment.
NGINX Ingress Controller: Deployed within the AKS cluster, this component manages external access to the services running inside Kubernetes. It acts as an intelligent router, handling traffic based on hostname and path, and crucially, performing TLS termination (decrypting HTTPS traffic) to enable secure communication from outside the cluster.
Azure Load Balancer: Automatically provisioned as part of the AKS cluster and integrated with the NGINX Ingress Controller, this service exposes the Ingress Controller's public IP address to the internet, allowing external clients to reach your application securely.
Kubernetes Manifests: YAML files that define the desired state of our application within AKS, including:
Deployments: Managing the application pods.
Services: Exposing the application internally within the cluster.
Ingress: Defining how external traffic, particularly HTTPS traffic, is routed to the application through the NGINX Ingress Controller.

![image](https://github.com/user-attachments/assets/dac5c3a1-c243-411c-b4f5-d07b131dfe9c)

