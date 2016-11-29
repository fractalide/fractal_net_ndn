{ stdenv, buildFractalideComponent, genName, upkeepers
  , interest
  , data
  , ...}:

buildFractalideComponent rec {
  name = genName ./.;
  src = ./.;
  contracts = [ interest data ];
  depsSha256 = "10yy85jxk0m9vz1f5k60k2g4rfph7lbjx079817i5n2digqvszmd";
  meta = with stdenv.lib; {
    description = "Component: A Named Data Networking Content Store";
    homepage = https://github.com/fractalide/fractalide/tree/master/components/net/ndn/cs;
    license = with licenses; [ mpl20 ];
    maintainers = with upkeepers; [ dmichiels sjmackenzie];
  };
}
