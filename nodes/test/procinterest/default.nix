{ agent, edges, crates, pkgs }:

agent {
  src = ./.;
  edges = with edges; [ interest data generic_text ];
  crates = with crates; [ rustfbp capnp ];
  osdeps = with pkgs; [];
  depsSha256 = "0gj8j3svzwgbdskwb2v20l2xjw8h63624iag1xm08myb5374rdh2";
}
