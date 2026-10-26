{ inputs, ... }:

let
  unstable = import inputs.nixpkgs-unstable {
    system = "x86_64-linux";
    config.allowUnfree = true;
  };
in
{
  services.ollama = {
    enable = true;
    package = unstable.ollama-cuda;
  };
}