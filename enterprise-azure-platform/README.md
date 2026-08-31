# Enterprise Azure Platform

This repository is structured to support a reusable Azure landing zone and workload deployment model with separate modules, platform layers, workload environments, governance, and CI/CD automation.

## Structure

- `modules/` reusable Terraform building blocks
  - `resource-group`
  - `network`
  - `nsg`
  - `storage`
  - `key-vault`
  - `private-endpoint`
  - `monitoring`
  - `aks`
  - `app-service`
  - `service-fabric`
  - `load-balancer`
  - `log-analytics`
  - `azure-policy`
  - `rbac`
  - `managed-identity`
  - `container-registry`
  - `firewall`
  - `dns`
  - `route-table`
  - `backup-recovery`
  - `application-gateway` (later)
  - `front-door` (later)
- `platform/` platform-level management and connectivity
  - `management`
  - `connectivity`
- `workloads/` environment-specific workloads
  - `dev`
  - `prod`
- `kubernetes/` cluster configuration and deployment manifests
  - `base`
  - `dev`
  - `prod`
- `policies/` Azure Policy and governance controls
- `pipelines/` CI/CD definitions for plan and apply
- `docs/` documentation

## Supported pipeline runners

- Azure DevOps (classic pipeline YAML)
- GitHub Actions
- Harness
- HashiCorp Terraform / Terraform Cloud style execution

Each pipeline is designed to run the Terraform plan and apply flows and print the results to the selected CI/CD system.
