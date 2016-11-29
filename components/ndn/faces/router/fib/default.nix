{ stdenv, buildFractalideComponent, genName, upkeepers
  , interest
  , ...}:

buildFractalideComponent rec {
  name = genName ./.;
  src = ./.;
  contracts = [ interest ];
  depsSha256 = "1qqhlhgqsrfikqs4bkw2rcv4w9f73hs43lwx29cl0q8kj03rmblx";
  meta = with stdenv.lib; {
    description = "Component: A Named Data Networking Forwarding Information Base";
    homepage = https://github.com/fractalide/fractalide/tree/master/components/net/ndn/fib;
    license = with licenses; [ mpl20 ];
    maintainers = with upkeepers; [ dmichiels sjmackenzie];
  };
}
