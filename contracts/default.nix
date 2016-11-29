{ pkgs, support, allContracts, ... }:
let
callPackage = pkgs.lib.callPackageWith (pkgs // allContracts // support);
in
rec {
  data = callPackage ./data {};
  interest = callPackage ./interest {};
}
