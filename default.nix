{
  lib,
  rustPlatform,
  fetchFromGitHub,
}:

rustPlatform.buildRustPackage rec {
  pname = "en";
  version = "unstable-2025-12-18";

  src = fetchFromGitHub {
    owner = "Endersoul46";
    repo = "en";
    rev = "116846ebaea3f4641010884ab353832d4ad92fb0";
    hash = "sha256-hdUN4fCBlvT2JRNRaQNAUqKKTbHjUVUGiX1J/bUPP+A=";
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
