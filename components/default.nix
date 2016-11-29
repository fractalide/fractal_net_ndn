{ buffet }:

let
callPackage = buffet.pkgs.lib.callPackageWith (buffet // buffet.support );
self = rec { # use one line only to insert a component (utils/new_component.py sorts this list)
  ndn = callPackage ./ndn {};
  ndn_faces = callPackage ./ndn/faces {};
  ndn_faces_router = callPackage ./ndn/faces/router {};
  ndn_faces_router_cs = callPackage ./ndn/faces/router/cs {};
  ndn_faces_router_faces = callPackage ./ndn/faces/router/faces {};
  ndn_faces_router_fib = callPackage ./ndn/faces/router/fib {};
  ndn_faces_router_pit = callPackage ./ndn/faces/router/pit {};
  ndn_faces_socket = callPackage ./ndn/faces/socket {};
  print = callPackage ./print {};
  test = callPackage ./test/local {};
  test_procinterest = callPackage ./test/procinterest {};
}; # use one line only to insert a component (utils/new_component.py sorts this list)
in
self
