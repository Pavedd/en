{
  lib,
  rustPlatform,
  fetchFromGitHub,
}:

rustPlatform.buildRustPackage rec {
  pname = "en";
  version = "unstable-2026-01-07";

  src = fetchFromGitHub {
    owner = "Pavedd";
    repo = "en";
    rev = "a0b08dbef827e5466637bf87190f7738842070c7";
    hash = "sha256-zpTvER0hgjd7R/hGcpQ9H2l7hXHYKWPggjeOR4QTzQQ=";
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
