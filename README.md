# Internal Developer Platform

This repository contains the configuration and setup for running Kubernetes (k8s) on a bare metal NixOS server cluster. The repository is divided into branches to manage different configurations and workflows.

## Key Features

- **NixOS Configuration**: Managed by [snowfall.org](https://snowfall.org), this branch contains the NixOS configuration for the server cluster.
- **Kubernetes Configuration**: Managed by [ArgoCD](https://argoproj.github.io/argo-cd/), this branch contains the k8s configuration.
- **CI/CD Pipeline**: Automated testing of configurations using GitHub Actions to ensure reliability and consistency.
- **Frontend GUI**: [Port](https://port.dev) is used as the frontend GUI to interact with the k8s cluster.

## Branches

- **NixOS Configuration Branch**: Contains all the necessary files and scripts to configure the NixOS server cluster.
- **Kubernetes Configuration Branch**: Contains the k8s manifests and configurations that ArgoCD will deploy and manage.

## Continuous Integration and Continuous Deployment (CI/CD)

We use GitHub Actions to automate the testing and deployment of our configurations. This ensures that any changes made to the configurations are validated and deployed seamlessly.

## Frontend GUI

Port is used as the frontend GUI to provide an intuitive interface for interacting with the Kubernetes cluster. It simplifies the management and monitoring of the cluster.

## Getting Started

1. **Clone the Repository**:
    ```sh
    git clone https://github.com/your-org/internal-developer-platform.git
    ```

2. **Checkout the Desired Branch**:
    ```sh
    git checkout nixos
    ```

3. **Follow the Instructions in the Branch's README** to set up and configure the environment.
    Follow the instructions in the respective system's README to set up and manage the resources:
    - [CryoSys](https://github.com/AttackOnTyler/tundra/blob/nixos/systems/x86_64-linux/CryoSys/README.md): A WSL admin configuration.
    - [AuroRe](https://github.com/AttackOnTyler/tundra/blob/nixos/systems/x86_64-linux/AuroRe/README.md): My remote Surface Pro 3 remote admin configuration.
    - [Borealis](https://github.com/AttackOnTyler/tundra/blob/nixos/systems/aarch64-darwin/Borealis/README.md): A mac admin configuration.
    - [FrostLink](https://github.com/AttackOnTyler/tundra/blob/nixos/systems/x86_64-linux/FrostLink/README.md): A linux admin configuration.

## Contributing

While we appreciate and love FOSS and open source contributions, this repository is purpose built for our company needs and will need to be heavily modified in order to be used. It can be done, we don't want the responsibility of supporting people outside our organization.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contact

For any questions or support, please open an issue in this repository or contact the maintainers.
