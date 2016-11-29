{ stdenv, buildFractalideComponent, genName, upkeepers
  , interest
  , data
  , ...}:

buildFractalideComponent rec {
  name = genName ./.;
  src = ./.;
  contracts = [ interest data ];
  depsSha256 = "022map6kpw4ydnvys0r72crqr8v7ycl1dksa4wzwnhvw24jfksys";
  meta = with stdenv.lib; {
    description = "Component: A Named Data Networking Pending Interest Table";
    homepage = https://github.com/fractalide/fractalide/tree/master/components/net/ndn/pit;
    license = with licenses; [ mpl20 ];
    maintainers = with upkeepers; [ dmichiels sjmackenzie];
  };
}
