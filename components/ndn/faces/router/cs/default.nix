{ component, contracts, crates, pkgs }:

component {
  src = ./.;
  contracts = with contracts; [ interest data ];
  crates = with crates; [];
  osdeps = with pkgs; [];
  depsSha256 = "10yy85jxk0m9vz1f5k60k2g4rfph7lbjx079817i5n2digqvszmd";
}
