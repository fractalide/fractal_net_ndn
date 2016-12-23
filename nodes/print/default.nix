{ agent, edges, crates, pkgs }:

agent {
  src = ./.;
  edges = with edges; [ interest data ];
  crates = with crates; [ rustfbp capnp ];
  osdeps = with pkgs; [];
}
