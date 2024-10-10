{ options, config, lib, pkgs, namespace, ... }:

with lib;
with lib.${namespace};
let
  cfg = config.${namespace}.archetypes.wsl;
in
{
  options.${namespace}.archetypes.wsl = with types; {
    enable = mkBoolOpt false "Whether or not to enable the WSL archetype.";
  };

  imports = [
    <nixos-wsl/modules>
  ];

  config = mkIf cfg.enable {    
    wsl.enable = true;
  };
}