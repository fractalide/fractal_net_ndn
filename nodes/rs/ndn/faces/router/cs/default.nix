{ agent, edges, mods, pkgs }:

agent {
  src = ./.;
  edges = with edges; [ NetNdnInterest NetNdnData ];
  mods = with mods.rs; [ rustfbp capnp ];
  osdeps = with pkgs; [];
}
