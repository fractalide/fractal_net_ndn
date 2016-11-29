{ stdenv, buildFractalideSubnet, upkeepers
  , ndn_faces_router
  , ndn_faces_socket
  , ...}:

buildFractalideSubnet rec {
  src = ./.;
  subnet = ''
  // receiver receives packets coming from the ndn network
  // sender "sends" packets onto the ndn network
    option => option socket(${ndn_faces_socket})

    outbound_interest => outbound_interest router(${ndn_faces_router})

    // when an interest arrives your app needs to satisfy it if possible with data
    router() interest => interest

    // responding to the above interest
    data => data router()

    // when your app has an interest
    interest => interest router()

    // the response to the interest your app just expressed
    router() data => data
  '';

  meta = with stdenv.lib; {
    description = "Subnet: net_ndn; Named Data Networking";
    homepage = https://github.com/fractalide/fractalide/tree/master/components/net/ndn/router;
    license = with licenses; [ mpl20 ];
    maintainers = with upkeepers; [ dmichiels sjmackenzie];
  };
}
