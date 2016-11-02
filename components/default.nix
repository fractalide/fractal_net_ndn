{ pkgs, support, allContracts, allComponents, ... }:
let
callPackage = pkgs.lib.callPackageWith (pkgs // support // allContracts // allComponents);
self = rec { # use one line only to insert a component (utils/new_component.py sorts this list)
  net_ndn = callPackage ./net/ndn {};
  net_ndn_print = callPackage ./net/ndn/print {};
  net_ndn_router = callPackage ./net/ndn/router {};
  net_ndn_router_cs = callPackage ./net/ndn/router/cs {};
  net_ndn_router_faces = callPackage ./net/ndn/router/faces {};
  net_ndn_router_fib = callPackage ./net/ndn/router/fib {};
  net_ndn_router_pit = callPackage ./net/ndn/router/pit {};
  net_ndn_test_local = callPackage ./net/ndn/test/local {};
  net_ndn_test_procinterest = callPackage ./net/ndn/test/procinterest {};
}; # use one line only to insert a component (utils/new_component.py sorts this list)
in
self
