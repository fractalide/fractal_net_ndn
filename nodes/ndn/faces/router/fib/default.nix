{ agent, edges, crates, pkgs }:

agent {
  src = ./.;
  edges = with edges; [ NetNdnInterest ];
  crates = with crates; [ rustfbp capnp ];
  osdeps = with pkgs; [];
}
