let
  pkgs = import <nixpkgs> {};
in
pkgs.mkShell {
  buildInputs = [
    pkgs.complgen
    pkgs.bash-completion
  ];

  shellHook = ". ${pkgs.bash-completion.outPath}/share/bash-completion/bash_completion";
}
