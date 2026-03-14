{
  lib,
  rustPlatform,
  fetchFromGitHub,
}:

rustPlatform.buildRustPackage rec {
  pname = "en";
  version = "unstable-2026-02-19";

  src = fetchFromGitHub {
    owner = "Pavedd";
    repo = "en";
    rev = "d0d884887ae9bc143d0cd1d46ce0d4acb448276b";
    hash = "sha256-ImJUG6pMqL42o8OfHR14kawdMcGuJ72Hm2Nv1Aovy6g=";
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
