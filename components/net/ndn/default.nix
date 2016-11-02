{ stdenv, buildFractalideSubnet, upkeepers
  , net_ndn_router
  , ...}:

buildFractalideSubnet rec {
  src = ./.;
  subnet = ''
  // Interests
  // 1) incoming interests from local apps and forwarded to remote apps
    outbound_interest => outbound_interest router(${net_ndn_router})
  // 2) incoming interests from remote apps and forwarded to local apps
    router() inbound_interest => inbound_interest
  // 3) incoming interests from remote apps and forwarded to remote apps
  // moot

  // Data
  // 1) incoming data from local apps and forwarded to remote apps
    outbound_data => outbound_data router()
  // 2) incoming data from remote apps and forwarded to local apps
    router() inbound_data => inbound_data
  // 3) incoming data from remote apps and forwarded to remote apps
  // moot
  '';

  meta = with stdenv.lib; {
    description = "Subnet: net_ndn; Named Data Networking";
    homepage = https://github.com/fractalide/fractalide/tree/master/components/net/ndn;
    license = with licenses; [ mpl20 ];
    maintainers = with upkeepers; [ dmichiels sjmackenzie];
  };
}
