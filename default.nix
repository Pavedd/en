{
  lib,
  rustPlatform,
  fetchFromGitHub,
}:

rustPlatform.buildRustPackage rec {
  pname = "en";
  version = "unstable-2026-01-08";

  src = fetchFromGitHub {
    owner = "Pavedd";
    repo = "en";
    rev = "b0f3c4c529c46efbec73ca88e6c9ae35afce85b4";
    hash = "sha256-hqLqsQtDETxCapG3ctqw/YpDofC0OyPbllEPtbzgnAc=";
  };

  cargoLock = {
    lockFile = ./Cargo.lock;
  };

  meta = {
    description = "A rust cli Helper untility for my NixOS config";
    homepage = "https://github.com/Pavedd/en";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ ];
    mainProgram = "en";
  };
}
