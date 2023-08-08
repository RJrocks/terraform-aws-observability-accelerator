# Setting Up Container Insights for your EKS Cluster

This example deploys AWS Distro of OpenTelemetry on your EKS cluster as a Daemonset which will enable
Container Insights metrics Dashboard on Amazon CloudWatch.


## Prerequisites

!!! note
    Make sure to complete the [prerequisites section](https://aws-observability.github.io/terraform-aws-observability-accelerator/concepts/#prerequisites) before proceeding.

## Setup

### 1. Download sources and initialize Terraform

```
git clone https://github.com/aws-observability/terraform-aws-observability-accelerator.git
cd terraform-aws-observability-accelerator/examples/eks-container-insights
terraform init
```

### 2. AWS Region

Specify the AWS Region where the resources will be deployed:

```bash
export TF_VAR_aws_region=xxx
```
### 2. EKS Cluster Name

Specify the EKS Cluster Name where the resources will be deployed:

```bash
export TF_VAR_eks_cluster_id=xxx
```

## Deploy

Simply run this command to deploy the example

```bash
terraform apply
```

## Visualization

After apply, you can go to CloudWatch switch to the same region where your EKS cluster is running, then from the left hand side choose `Insights -> Container Insights`, there choose the `Performance montoring` from the drop down, choose the `cluster name` and you will see the metrics shown on the dashboard:

<img width="1461" alt="Screenshot 2023-08-02 at 11.32.28 AM" src="https://github.com/RJrocks/terraform-aws-observability-accelerator/assets/5756583/80e5073b-0b03-44e6-bd47-e845506263ab">


## Cleanup

To clean up your environment, destroy the Terraform example by running

```sh
terraform destroy
```
