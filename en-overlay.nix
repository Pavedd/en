self: super: {
      en = super.inputs.en  {
        inherit (super) lib rustPlatform fetchFromGitHub;
      };
      }
