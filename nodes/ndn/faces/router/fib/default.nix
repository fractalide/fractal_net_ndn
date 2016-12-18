{ agent, edges, crates, pkgs }:

agent {
  src = ./.;
  edges = with edges; [ interest ];
  crates = with crates; [ rustfbp capnp ];
  osdeps = with pkgs; [];
  depsSha256 = "1qqhlhgqsrfikqs4bkw2rcv4w9f73hs43lwx29cl0q8kj03rmblx";
}
