{ agent, edges, crates, pkgs }:

agent {
  src = ./.;
  edges = with edges; [ NetNdnInterest NetNdnData PrimText ];
  crates = with crates; [ rustfbp capnp ];
  osdeps = with pkgs; [];
}
