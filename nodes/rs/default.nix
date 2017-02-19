{ buffet }:

# Please refer to section 2.6 namely Evolution of Public Contracts
# of the Collective Code Construction Contract in CONTRIBUTING.md
let
  callPackage = buffet.pkgs.lib.callPackageWith ( buffet.pkgs // buffet.support.rs // buffet.support // buffet );
in
{
  # RAW NODES
  # -   raw nodes are incomplete and immature, they may wink into and out of existance
  # -   use at own risk, anything in this section can change at any time.

  ndn = callPackage ./ndn {};
  ndn_faces = callPackage ./ndn/faces {};
  ndn_faces_router = callPackage ./ndn/faces/router {};
  ndn_faces_router_cs = callPackage ./ndn/faces/router/cs {};
  ndn_faces_router_fib = callPackage ./ndn/faces/router/fib {};
  ndn_faces_router_pit = callPackage ./ndn/faces/router/pit {};
  ndn_faces_socket = callPackage ./ndn/faces/socket {};
  print = callPackage ./print {};
  test = callPackage ./test/local {};
  test_procinterest = callPackage ./test/procinterest {};

  # DRAFT NODES
  # -   draft nodes change a lot in tandom with other nodes in their subgraph
  # -   there will be change in these nodes and few people are using these nodes so expect breakage

  # STABLE NODES
  # -   stable nodes do not change names of ports, agents nor subgraphs,
  # -   you may add new port names, but never change, nor remove port names

  # DEPRECATED NODES
  # -   deprecated nodes do not change names of ports, agents nor subgraphs.
  # -   keep the implementation functioning, print a warning message and tell users to use replacement node

  # LEGACY NODES
  # -   legacy nodes do not change names of ports, agents nor subgraphs.
  # -   assert and remove implementation of the node.
}
