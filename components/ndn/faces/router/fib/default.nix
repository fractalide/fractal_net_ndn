{ component, contracts, crates, pkgs }:

component {
  src = ./.;
  contracts = with contracts; [ interest ];
  crates = with crates; [];
  osdeps = with pkgs; [];
  depsSha256 = "1qqhlhgqsrfikqs4bkw2rcv4w9f73hs43lwx29cl0q8kj03rmblx";
}
