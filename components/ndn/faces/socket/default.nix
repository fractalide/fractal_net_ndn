{ component, contracts, crates, pkgs }:

component {
  src = ./.;
  contracts = with contracts; [ ];
  crates = with crates; [];
  osdeps = with pkgs; [];
  depsSha256 = "1b0li4v97vdmd2rpy3ri66wvdhx8dnxknaz32ld906lb4y5h70ds";
}
