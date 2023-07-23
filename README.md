# TF-Workspace

Welcome to the TF_workspace repository. This repository contains Terraform configuration files for learning and practical applications. It is organized into two primary sections: Terraform Basics and GCP.

## Terraform Basics
- This section is designed to cover the fundamental aspects of Terraform. 
- It encompasses several projects, each demonstrating a core feature of Terraform:

- 01-tf-hello-world: The simplest Terraform configuration.
- 02-local-arguments: Illustrates the usage of local values.
- 03-multiple-resources: Manages multiple resources.
- 04-random-provider: Utilization of the Random provider in Terraform.
- 05-variables: Introduction to Terraform variables.
- 06-types-of-variables: Showcases different types of variables in Terraform.
- 07-multiple-provider: Shows how to handle multiple providers in a Terraform configuration.
- 08-dependency: Illustrates implicit and explicit dependencies in Terraform.
- 09-output-block: Usage of output blocks in Terraform.
- 10-lifecycle-rules: Shows how to use lifecycle blocks in Terraform.
- 11-provider-versions: Describes how to specify provider versions in Terraform.
- 12-data-source: Showcases the use of data sources in Terraform.

## GCP
This section contains numerous projects, each showcasing different aspects of working with Google Cloud Platform (GCP) services using Terraform. Each folder contains a standalone project equipped with its own Terraform configuration files (main.tf, provider.tf, etc.), and state files (terraform.tfstate, terraform.tfstate.backup).

- 01-getting-started: An introductory guide to setting up GCP with Terraform.
- 02-auth-with-service-account: Demonstrates how to authenticate with GCP using a service account.
- 03-google-cloud-storage: Configuration for Google Cloud Storage setup.
- 04-google-network: Explains how to create a virtual private cloud (VPC) network on GCP.
- 05-google-compute-engine: Contains Terraform configuration for Google Compute Engine.
- 06-Google-serverless-Cloud-Run: Shows the deployment of a serverless application on Google Cloud Run.
- 07-Google-cloud-functions: Configuration for deploying Google Cloud Functions.
- 08-Google-Big-Query: Setup for Google BigQuery using Terraform.
- 09-Google-cloud-PubSub: Illustrates Pub/Sub setup on GCP.
- 10-Google-cloud-spanner: Contains Terraform configuration for Google Cloud Spanner.

## How to Use
To utilize any of these projects, 
- navigate into the directory of the desired project, 
- and run *terraform init* to initialize the Terraform workspace. 
- Following that, run *terraform apply* to create the resources described in the Terraform configuration.

- Ensure you have the necessary permissions to create resources in your GCP account (for the GCP section), and that Terraform is installed on your machine.

