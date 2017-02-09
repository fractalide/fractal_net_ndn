{ edge, edges }:

edge {
  src = ./.;
  edges =  with edges; [];
  schema = with edges; ''
    struct NetNdnInterest {
      name @0 :Text;
      nonce @1 :Int32;
    }
  '';
}
