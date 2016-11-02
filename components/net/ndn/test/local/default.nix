{ stdenv, buildFractalideSubnet, upkeepers
  , net_ndn
  , net_ndn_test_procinterest
  , net_ndn_print
  # contracts
  , net_ndn_interest
  , generic_text
  , protocol_domain_port
  , ...}:

buildFractalideSubnet rec {
  src = ./.;
  subnet = ''
  // receiver receives packets coming from the ndn network
  // sender "sends" packets onto the ndn network
  '${protocol_domain_port}:(protocol="", domain="localhost", port="44444")' -> option ndn(${net_ndn})

  '${net_ndn_interest}:(name="interest0",nonce=000)' -> outbound_interest[0] ndn()
  '${net_ndn_interest}:(name="interest1",nonce=111)' -> outbound_interest[1] ndn()
  '${net_ndn_interest}:(name="interest2",nonce=222)' -> outbound_interest[2] ndn()

  '${generic_text}:(name="interest0")' -> option proc_interest0(${net_ndn_test_procinterest})
  '${generic_text}:(name="interest1")' -> option proc_interest1(${net_ndn_test_procinterest})
  '${generic_text}:(name="interest2")' -> option proc_interest2(${net_ndn_test_procinterest})

  ndn() inbound_interest[0] -> inbound_interest proc_interest0()
  ndn() inbound_interest[1] -> inbound_interest proc_interest1()
  ndn() inbound_interest[2] -> inbound_interest proc_interest2()

  proc_interest0() outbound_data -> outbound_data[0] ndn()
  proc_interest1() outbound_data -> outbound_data[1] ndn()
  proc_interest2() outbound_data -> outbound_data[2] ndn()

  ndn() inbound_data[0] -> data print(${net_ndn_print})
  ndn() inbound_data[1] -> data print()
  ndn() inbound_data[2] -> data print()
  '';

  meta = with stdenv.lib; {
    description = "Subnet: net_ndn; Named Data Networking";
    homepage = https://github.com/fractalide/fractalide/tree/master/components/net/ndn;
    license = with licenses; [ mpl20 ];
    maintainers = with upkeepers; [ dmichiels sjmackenzie];
  };
}
