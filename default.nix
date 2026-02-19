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
    rev = "feb655252909ff3a7acd76f9c0c2754fabdcd4d9";
    hash = "sha256-MstFAFHBSxfmPug8OEU3CyYrM97NmtI9EYgxJjo7pU4=";
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
