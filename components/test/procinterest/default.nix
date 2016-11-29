{ component, contracts, crates, pkgs }:

component {
  src = ./.;
  contracts = with contracts; [ interest data generic_text ];
  crates = with crates; [];
  osdeps = with pkgs; [];
  depsSha256 = "0gj8j3svzwgbdskwb2v20l2xjw8h63624iag1xm08myb5374rdh2";
}
