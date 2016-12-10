{ agent, edges, crates, pkgs }:

agent {
  src = ./.;
  edges = with edges; [ interest data ];
  crates = with crates; [];
  osdeps = with pkgs; [];
  depsSha256 = "17pvj5akz20ds0dy271gj0iapry0llki040agzn1b58z54j99ywm";
}
