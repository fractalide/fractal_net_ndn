
{ stdenv, buildFractalideComponent, genName, upkeepers
# contracts:
, interest, data, generic_text
, ...}:

buildFractalideComponent rec {
  name = genName ./.;
  src = ./.;
  contracts = [interest data generic_text];
  depsSha256 = "0gj8j3svzwgbdskwb2v20l2xjw8h63624iag1xm08myb5374rdh2";

  meta = with stdenv.lib; {
    description = "Component: process an interest and return a data packet";
    homepage = https://gitlab.com/fractalide/fractalide/tree/master/components/maths/boolean/nand;
    license = with licenses; [ mpl20 ];
    maintainers = with upkeepers; [ dmichiels sjmackenzie];
  };
}
