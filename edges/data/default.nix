{ edge, edges }:

edge {
  src = ./.;
  edges =  with edges; [];
  schema = with edges; ''
    struct NetNdnData {
      name @0 :Text;
      metainfo @1 :Text;
      content @2 :Data;
      signature @3 :Text;
    }
  '';
}
