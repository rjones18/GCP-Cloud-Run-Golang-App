# GCP Cloud Run Golang Weather App

This project deploys a **containerized Golang weather application** on **Google Cloud Run** using **Terraform**, **GitHub-based CI/CD**, and **Snyk** for security scanning. Infrastructure is provisioned using a **reusable Terraform module** that standardizes Cloud Run deployments on GCP.

🔗 **Live Site:**  
https://weather-app.reggietestgcpdomain.com/

🔗 **Terraform Module Used:**  
https://github.com/rjones18/GCP-CLOUDRUNNER-TERRAFORM-MODULE (v1.0.0)

---

## Overview

The application is built with the **Gin HTTP framework** and integrates **OpenWeather** and **OpenCage** APIs to deliver real-time, location-based weather data. Static assets are cached using **Firebase CDN Hosting**, providing fast global response times. A custom domain is configured for a clean, user-facing endpoint.

---

## Infrastructure & CI/CD

Infrastructure is managed with **Terraform**, leveraging a custom Cloud Run module to ensure consistency, reusability, and version-controlled deployments. The project uses two automated pipelines:

- **Infrastructure pipeline** – applies Terraform changes and runs Snyk IaC scans  
- **Application pipeline** – builds and deploys Docker images to Cloud Run

This separation allows infrastructure and application changes to be deployed independently and safely.

---

## Architecture

![Cloud Run Application Architecture](https://github.com/rjones18/Images/blob/main/Cloud%20Run%20Application.png)

