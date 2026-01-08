{
  lib,
  stdenv,
  fetchFromGitHub,
  cargo,
  rustPlatform,
  rustc,
}:

stdenv.mkDerivation rec {
  pname = "en";
  version = "unstable-2026-01-08";

  src = fetchFromGitHub {
    owner = "Pavedd";
    repo = "en";
    rev = "6c29c2ffc23228934ebf5a19d005f8229b2c9779";
    hash = "sha256-n8uu03hrJRNvx/ARLVliIjSEFF5o4IMKIFo4vPsRGZQ=";
  };

  cargoDeps = rustPlatform.importCargoLock {
    lockFile = ./Cargo.lock;
  };

  nativeBuildInputs = [
    cargo
    rustPlatform.cargoSetupHook
    rustc
  ];

  meta = {
    description = "A rust cli Helper untility for my NixOS config";
    homepage = "https://github.com/Pavedd/en";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ ];
    mainProgram = "en";
    platforms = lib.platforms.all;
  };
}
