{ agent, edges, crates, pkgs }:

agent {
  src = ./.;
  edges = with edges; [ interest data prim_text ];
  crates = with crates; [ rustfbp capnp ];
  osdeps = with pkgs; [];
}
