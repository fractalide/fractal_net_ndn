
{ stdenv, buildFractalideComponent, genName, upkeepers
# contracts:
, net_ndn_interest, net_ndn_data

, ...}:

buildFractalideComponent rec {
  name = genName ./.;
  src = ./.;
  contracts = [net_ndn_interest net_ndn_data];
  depsSha256 = "1ll8b7d501bk532kg3nsz6p610j22w7hyadqjfjmx514c43k3ifg";

  meta = with stdenv.lib; {
    description = "Component: print ndn interest or ndn data";
    homepage = https://gitlab.com/fractalide/fractalide/tree/master/components/maths/boolean/nand;
    license = with licenses; [ mpl20 ];
    maintainers = with upkeepers; [ dmichiels sjmackenzie];
  };
}
