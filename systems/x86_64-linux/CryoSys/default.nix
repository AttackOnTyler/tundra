{ lib, pkgs, namespace, config, ... }:
with lib;
with lib.${namespace};
{  
  imports = [
    <nixos-wsl/modules>
  ];
  
  wsl.enable = true;
  system.stateVersion = "24.05";
}