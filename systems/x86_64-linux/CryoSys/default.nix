{ lib, pkgs, namespace, config, ... }:
with lib;
with lib.${namespace};
{  
  tundra.archetypes.wsl = enabled;
  system.stateVersion = "24.05";
}