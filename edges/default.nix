{ buffet }:
let
  callPackage = buffet.pkgs.lib.callPackageWith ( buffet.support // buffet );
in
rec {
  data = callPackage ./data {};
  interest = callPackage ./interest {};
}
