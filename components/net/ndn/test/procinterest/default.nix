
{ stdenv, buildFractalideComponent, genName, upkeepers
# contracts:
, net_ndn_interest, net_ndn_data, generic_text
, ...}:

buildFractalideComponent rec {
  name = genName ./.;
  src = ./.;
  contracts = [net_ndn_interest net_ndn_data generic_text];
  depsSha256 = "059vygsg11vzl5lbwzyr8drjfdxm6ig33igjjg2vw15z2lzxb9gp";

  meta = with stdenv.lib; {
    description = "Component: process an interest and return a data packet";
    homepage = https://gitlab.com/fractalide/fractalide/tree/master/components/maths/boolean/nand;
    license = with licenses; [ mpl20 ];
    maintainers = with upkeepers; [ dmichiels sjmackenzie];
  };
}
