{ pkgs, support, allContracts, ... }:
let
callPackage = pkgs.lib.callPackageWith (pkgs // allContracts // support);
in
rec {
  data = callPackage ./net/ndn/data {};
  interest = callPackage ./net/ndn/interest {};
}
