# 📦 kube-homelab-v2

A fully refactored, IaC, GitOps-driven Kubernetes homelab.

This repository contains the second-generation architecture of my Kubernetes homelab.  
After several months of hands-on learning and experimenting with FluxCD, Helm, Kustomize, and GitOps patterns, I decided to rebuild the structure from the ground up to follow a cleaner, more modular, and industry-standard layout.

---

## 🎯 Goals of this repository

- declarative GitOps deployments  
- Kubernetes best practices  
- clean separation of apps, infrastructure, and platform services  
- easier debugging and upgrades  
- long-term maintainability  

---

## 🔥 Why this repo exists (v2)

My previous repo served its purpose, but as I adopted more real GitOps patterns and larger tools  
(Flux, External Secrets, KEDA, Longhorn, Cloudflared, Prometheus, etc.),  
the structure became harder to maintain and troubleshoot.

This new repo:

- follows a clean **OneDr0p-style layout**  
- separates **apps**, **infrastructure**, and **platform controllers**  
- eliminates **recursive / double Kustomization builds**  
- avoids **duplicate resources and namespace conflicts**  
- uses **stable namespace boundaries**  
- supports **layering (base → overlays)** without issues  
- works smoothly with **FluxCD**  

---

## 🛠️ GitOps Pipeline

This repo is fully managed via **FluxCD**, using a pull-driven GitOps model.  
Every change merged into `main` is automatically deployed to the cluster.

### Components included:

- **FluxCD** (GitOps engine)  
- **Helm** (package and lifecycle management)  
- **Kustomize** (declarative configuration layering)  
- **External Secrets Operator** (secure secrets sync from external stores)  
- **KEDA** (event-driven autoscaling)  
- **Longhorn** (distributed block storage)  
- **Cloudflared Tunnel** (secure remote ingress)  
- **Prometheus + Grafana** (monitoring + dashboards)  
