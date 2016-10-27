{ pkgs, support, allContracts, allComponents, ... }:
let
callPackage = pkgs.lib.callPackageWith (pkgs // support // allContracts // allComponents);
self = rec { # use one line only to insert a component (utils/new_component.py sorts this list)
  net_ndn = callPackage ./net/ndn {};
  net_ndn_relay = callPackage ./net/ndn/relay {};
  net_ndn_relay_filter = callPackage ./net/ndn/relay/filter {};
  net_ndn_relay_sort = callPackage ./net/ndn/relay/sort {};
  net_ndn_router = callPackage ./net/ndn/router {};
  net_ndn_router_cs = callPackage ./net/ndn/router/cs {};
  net_ndn_router_faces = callPackage ./net/ndn/router/faces {};
  net_ndn_router_fib = callPackage ./net/ndn/router/fib {};
  net_ndn_router_pit = callPackage ./net/ndn/router/pit {};
  net_ndn_router_print_interest = callPackage ./net/ndn/router/print/interest {};
  net_ndn_test = callPackage ./net/ndn/test {};
}; # use one line only to insert a component (utils/new_component.py sorts this list)
in
self
