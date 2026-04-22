{
  description = "NixOS rolling release";

  inputs={ 
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    dms = {
          url = "github:AvengeMedia/DankMaterialShell";
          inputs.nixpkgs.follows = "nixpkgs";
        };
  };
	
  outputs = { self, nixpkgs, dms }: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [ 
        ./configuration.nix 
        dms.nixosModules.default
        ];
    };
  };
}

