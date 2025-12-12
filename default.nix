{
  lib,
  rustPlatform,
  fetchFromGitHub,
}:

rustPlatform.buildRustPackage rec {
  pname = "en";
  version = "unstable-2025-12-12";

  src = fetchFromGitHub {
    owner = "Endersoul46";
    repo = "en";
    rev = "c78971f39a0c99e87a007dc2cac108c4d518aaf7";
    hash = "sha256-eoI9kk6nFvxT1b/YyvxEpGvx6LprLsQRrmVlIOb33mU=";
  };

  cargoLock = {
    lockFile = ./Cargo.lock;
  };

  meta = {
    description = "A rust cli Helper untility for my NixOS config";
    homepage = "https://github.com/Endersoul46/en";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ ];
    mainProgram = "en";
  };
}
