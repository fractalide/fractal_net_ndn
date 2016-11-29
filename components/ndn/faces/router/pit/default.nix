{ component, contracts, crates, pkgs }:

component {
  src = ./.;
  contracts = with contracts; [ interest data ];
  crates = with crates; [];
  osdeps = with pkgs; [];
  depsSha256 = "022map6kpw4ydnvys0r72crqr8v7ycl1dksa4wzwnhvw24jfksys";
}
