# Internal Developer Platform

This repository contains the configuration and setup for running Kubernetes (k8s) on a bare metal NixOS server cluster. The repository is divided into branches to manage different configurations and workflows.

## Key Features

- **Kubernetes Configuration**: Managed by [ArgoCD](https://argoproj.github.io/argo-cd/), this branch contains the k8s manifests and configurations.
- **CI/CD Pipeline**: Automated testing and deployment of configurations using GitHub Actions to ensure reliability and consistency.
- **Frontend GUI**: [Port](https://port.dev) is used as the frontend GUI to interact with the k8s cluster.

## Branches

- **DevOps Branch**: Contains the k8s manifests, configurations, and CI/CD pipelines that ArgoCD will deploy and manage.

## Prerequisites

This repository uses various tools and libraries to manage the Kubernetes configurations and CI/CD pipelines.

To get started with Kubernetes and DevOps, it's essential to have a foundational understanding of these concepts. Here are some recommended resources:

- **Kubernetes Basics**: The [Kubernetes Documentation](https://kubernetes.io/docs/tutorials/kubernetes-basics/) provides a comprehensive introduction to Kubernetes, including its architecture, components, and basic operations.
- **DevOps Practices**: The [DevOps Handbook](https://www.amazon.com/DevOps-Handbook-World-Class-Reliability-Organizations/dp/1942788002) is a great resource to understand the principles and practices of DevOps.
- **CI/CD with GitHub Actions**: The [GitHub Actions Documentation](https://docs.github.com/en/actions) offers detailed guides on setting up and managing CI/CD pipelines using GitHub Actions.

These resources will help you get up to speed with the necessary knowledge to effectively work with this repository.


## Getting Started

1. **Switch to the DevOps Branch**:
    Ensure you are in the repository directory and switch to the `devops` branch:
    ```sh
    git switch devops
    ```

2. **Set Up and Configure the k8s Cluster and CI/CD Pipelines**:
    Follow the instructions in the respective system's README to set up and manage the resources:
    - [CryoSys](https://github.com/AttackOnTyler/tundra/blob/nixos/systems/x86_64-linux/CryoSys/README.md)
    - [AuroRe](https://github.com/AttackOnTyler/tundra/blob/nixos/systems/x86_64-linux/AuroRe/README.md)
    - [Borealis](https://github.com/AttackOnTyler/tundra/blob/nixos/systems/aarch64-darwin/Borealis/README.md)
    - [FrostLink](https://github.com/AttackOnTyler/tundra/blob/nixos/systems/x86_64-linux/FrostLink/README.md)

**Note**: The admin machines should already be configured and set up based on the `nixos` branch instructions.

## Contributing

While we appreciate and love FOSS and open source contributions, this repository is purpose built for our company needs and is source available. It can be forked and modified to suit your needs, however, we don't want the responsibility of supporting people outside our organization.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
