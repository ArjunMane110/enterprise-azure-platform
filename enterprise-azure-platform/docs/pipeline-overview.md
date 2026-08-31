# CI/CD pipeline overview

This repository contains Terraform scaffolding for the following automation systems:

1. Azure DevOps
   - `pipelines/azure-devops/azure-pipelines.plan.yml`
   - `pipelines/azure-devops/azure-pipelines.apply.yml`

2. GitHub Actions
   - `pipelines/github-actions/terraform-plan.yml`
   - `pipelines/github-actions/terraform-apply.yml`

3. Harness
   - `pipelines/harness/harness-pipeline.yaml`

4. HashiCorp / Terraform-native flow
   - `pipelines/hashicorp/terraform-plan-apply.hcl`

## Execution model

- Plan stage runs validation and prints the planned changes.
- Apply stage runs the infrastructure changes and prints the result to the CI/CD log.
- Each workflow is intended to be connected to Azure credentials via secrets or service connections.

## Required secrets / variables

- `ARM_CLIENT_ID`
- `ARM_CLIENT_SECRET`
- `ARM_SUBSCRIPTION_ID`
- `ARM_TENANT_ID`
- `AZURE_CREDENTIALS`
- `azureServiceConnection`

## Typical usage

- Run plan first in the selected CI/CD platform.
- Review output and confirm approved changes.
- Run apply pipeline to execute deployment.
