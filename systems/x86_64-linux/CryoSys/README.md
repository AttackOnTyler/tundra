# WSL Admin
This project provides administrative scripts and configurations for managing and creating other NixOS configurations within WSL.

## Prerequisites

- Ensure you have WSL installed on your Windows machine.
- Follow the instructions in the [nixos-wsl README](https://github.com/nix-community/nixos-wsl) to set up NixOS on your WSL instance.

## Running with Experimental Features (optional alternative install)

To run this project with experimental features using our flake, follow these steps:

1. **One Line Install:**

    Run the following line to rebuild into our admin flake:

    ```sh
    nix-shell -p git --command "nix run github:AttackOnTyler/tundra#wsl-admin --extra-experimental-features nix-command flakes"
    ```

## Working on your repo

Create your project directory to pull your forked repo 

1. **Create a shell**

    ```sh
    nix-shell -p git age-keygen
    ```

2. **Make changes to your admin, create your own ~/.config/sops/age/key.txt, and update ./sops.yaml with your public key**

    ```sh
    # Generate a new age key
    age-keygen -o ~/.config/sops/age/key.txt

    # Extract the public key
    PUBLIC_KEY=$(grep -o 'public key: .*' ~/.config/sops/age/key.txt | cut -d ' ' -f 3)

    # Update the sops.yaml file with the new public key
    echo "age:" > ./sops.yaml
    echo "  - $PUBLIC_KEY" >> ./sops.yaml
    ```

3. **Don't forget to stage/commit changes**

    Flakes use the git tree in order to run the files so don't forget to at least stage changes for you configuration to take affect!

    ```sh
    git add .
    ```

4. **Run the Flake:**

    ```sh
    nix run .#wsl-admin
    ```