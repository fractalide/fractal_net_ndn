{ agent, edges, crates, pkgs }:

agent {
  src = ./.;
  edges = with edges; [ interest ];
  crates = with crates; [ rustfbp capnp ];
  osdeps = with pkgs; [];
}
