{ subgraph, imsg, nodes, edges }:
let
  NetProtocolDomainPort = imsg {
    class = edges.NetProtocolDomainPort;
    text = ''(protocol="", domain="localhost", port=44444)'';
  };
  NetNdnInterest1 = imsg { class = edges.NetNdnInterest; text = ''(name="interest0",nonce=000)''; };
  NetNdnInterest2 = imsg { class = edges.NetNdnInterest; text = ''(name="interest1",nonce=111)''; };
  NetNdnInterest3 = imsg { class = edges.NetNdnInterest; text = ''(name="interest2",nonce=222)''; };
  PrimText1 = imsg { class = edges.PrimText; text = ''(text="interest0")''; };
  PrimText2 = imsg { class = edges.PrimText; text = ''(text="interest1")''; };
  PrimText3 = imsg { class = edges.PrimText; text = ''(text="interest2")''; };
in
subgraph {
  src = ./.;
  flowscript = with nodes.rs; ''
  // receiver receives packets coming from the ndn network
  // sender "sends" packets onto the ndn network
  '${NetProtocolDomainPort}' -> option ndn(${ndn})

  '${NetNdnInterest1}' -> outbound_interest[0] ndn()
  '${NetNdnInterest2}' -> outbound_interest[1] ndn()
  '${NetNdnInterest3}' -> outbound_interest[2] ndn()

  '${PrimText1}' -> option proc_interest0(${test_procinterest})
  '${PrimText2}' -> option proc_interest1(${test_procinterest})
  '${PrimText3}' -> option proc_interest2(${test_procinterest})

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
