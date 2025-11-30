{
  lib,
  rustPlatform,
  fetchFromGitHub,
}:

rustPlatform.buildRustPackage rec {
  pname = "en";
  version = "unstable-2025-11-30";

  src = fetchFromGitHub {
    owner = "Endersoul46";
    repo = "en";
    rev = "87bc251b35b267b05b60e56aa61142ed855d5413";
    hash = "sha256-oufX3/d0HXXBr7YUUtrQ1NF1GGpf2YwfPQSegn/Lk+c=";
  };

  cargoHash = "sha256-F3STRg61jU425VmuCV1iK8GoX10KXF6mloEzLeArtm8=";

  meta = {
    description = "A rust cli Helper untility for my NixOS config";
    homepage = "https://github.com/Endersoul46/en";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ ];
    mainProgram = "en";
  };
}
