{
  description = "NixOS rolling release";

  inputs={ 
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    dms = {
          url = "github:AvengeMedia/DankMaterialShell";
          inputs.nixpkgs.follows = "nixpkgs";
    };
    setrixtui = {
      url = "github:Mjoyufull/Setrixtui";
      inputs.nixpkgs.follows = "nixpkgs";
	};
	meowdo = {
	  url = "github:Sycorlax/Meowdo";
	  inputs.nixpkgs.follows = "nixpkgs";
	};
	
  };
	
  outputs = { self, nixpkgs, dms, ...}@inputs: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";

    specialArgs = {
      inherit inputs;
    };
          
    modules = [ 
      ./configuration.nix 
      dms.nixosModules.default
      ];
    };
  };
}

