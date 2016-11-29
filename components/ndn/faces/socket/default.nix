{ stdenv, buildFractalideComponent, genName, upkeepers
, ...}:

buildFractalideComponent rec {
  name = genName ./.;
  src = ./.;
  contracts = [];
  depsSha256 = "1b0li4v97vdmd2rpy3ri66wvdhx8dnxknaz32ld906lb4y5h70ds";

  meta = with stdenv.lib; {
    description = "Component: ndn's socket";
    homepage = https://gitlab.com/fractalide/fractalide/tree/master/components/maths/boolean/nand;
    license = with licenses; [ mpl20 ];
    maintainers = with upkeepers; [ dmichiels sjmackenzie];
  };
}
