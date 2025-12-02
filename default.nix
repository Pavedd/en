{
  lib,
  rustPlatform,
  fetchFromGitHub,
}:

rustPlatform.buildRustPackage rec {
  pname = "en";
  version = "unstable-2025-12-01";

  src = fetchFromGitHub {
    owner = "Endersoul46";
    repo = "en";
    rev = "8245377f78e3fdf498878a688dfa362d4062046d";
    hash = "sha256-B/OCZ6m7BJwC7dGFAjVRWuCMt/g8JuRLYxrgUXNHH7M=";
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
