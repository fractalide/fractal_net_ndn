{ subgraph, imsgs, nodes, edges }:

subgraph rec {
  src = ./.;
  imsg = imsgs {
    edges = with edges; [ NetProtocolDomainPort NetNdnInterest PrimText];
  };
  flowscript = with nodes; ''
  // receiver receives packets coming from the ndn network
  // sender "sends" packets onto the ndn network
  '${imsg}.NetProtocolDomainPort:(protocol="", domain="localhost", port="44444")' -> option ndn(${ndn})

  '${imsg}.NetNdnInterest:(name="interest0",nonce=000)' -> outbound_interest[0] ndn()
  '${imsg}.NetNdnInterest:(name="interest1",nonce=111)' -> outbound_interest[1] ndn()
  '${imsg}.NetNdnInterest:(name="interest2",nonce=222)' -> outbound_interest[2] ndn()

  '${imsg}.PrimText:(text="interest0")' -> option proc_interest0(${test_procinterest})
  '${imsg}.PrimText:(text="interest1")' -> option proc_interest1(${test_procinterest})
  '${imsg}.PrimText:(text="interest2")' -> option proc_interest2(${test_procinterest})

  ndn() inbound_interest[0] -> inbound_interest proc_interest0()
  ndn() inbound_interest[1] -> inbound_interest proc_interest1()
  ndn() inbound_interest[2] -> inbound_interest proc_interest2()

  proc_interest0() outbound_data -> outbound_data[0] ndn()
  proc_interest1() outbound_data -> outbound_data[1] ndn()
  proc_interest2() outbound_data -> outbound_data[2] ndn()

  ndn() inbound_data[0] -> data print(${print})
  ndn() inbound_data[1] -> data print()
  ndn() inbound_data[2] -> data print()
  '';
}
