{ buffet }:
let
  callPackage = buffet.pkgs.lib.callPackageWith ( buffet.support // buffet );
in
rec {
  NetNdnData = callPackage ./net/ndn/data {};
  NetNdnInterest = callPackage ./net/ndn/interest {};
}
