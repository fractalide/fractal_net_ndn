
{ stdenv, buildFractalideComponent, genName, upkeepers
# contracts:
, interest, data

, ...}:

buildFractalideComponent rec {
  name = genName ./.;
  src = ./.;
  contracts = [interest data];
  depsSha256 = "17pvj5akz20ds0dy271gj0iapry0llki040agzn1b58z54j99ywm";

  meta = with stdenv.lib; {
    description = "Component: print ndn interest or ndn data";
    homepage = https://gitlab.com/fractalide/fractalide/tree/master/components/maths/boolean/nand;
    license = with licenses; [ mpl20 ];
    maintainers = with upkeepers; [ dmichiels sjmackenzie];
  };
}
