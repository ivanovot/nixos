{
  description = "NixOS rolling release";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";

    setrixtui = {
      url = "github:Mjoyufull/Setrixtui";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    ducksay = {
      url = "github:ivanovot/ducksay";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    zen-browser = {
      url = "github:youwen5/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs"; 
    };

    pyroclear = {
      url = "github:shreyanth-sureshkrishnaa/pyroclear";
      inputs.nixpkgs.follows = "nixpkgs"; 
    };

    BedrockOnLinux = {
      url = "github:Wyze3306/BedrockOnLinux";
      # inputs.nixpkgs.follows = "nixpkgs"; 
    };

  };

  outputs = { self, nixpkgs, ... }@inputs: {
    overlays.default = import ./modules/packages/overlay.nix { inherit inputs; };

    nixosConfigurations.comp = nixpkgs.lib.nixosSystem {
      pkgs = import nixpkgs {
        hostPlatform = "x86_64-linux";

        config = {
          allowUnfree = true;
          cudaSupport = true;
        };
      };

      specialArgs = { inherit inputs; };

      modules = [
        ./configuration.nix
      ];
    };
  };
}
