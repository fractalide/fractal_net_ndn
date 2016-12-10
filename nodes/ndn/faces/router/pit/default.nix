{ agent, edges, crates, pkgs }:

agent {
  src = ./.;
  edges = with edges; [ interest data ];
  crates = with crates; [];
  osdeps = with pkgs; [];
  depsSha256 = "022map6kpw4ydnvys0r72crqr8v7ycl1dksa4wzwnhvw24jfksys";
}
