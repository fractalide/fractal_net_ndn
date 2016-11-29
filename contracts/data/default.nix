{ contract, contracts }:

contract {
  src = ./.;
  importedContracts = with contracts; [ ];
  schema = with contracts; ''
  @0xb8fe0e9d444693c3;

  struct Data {
    name @0 :Text;
    metainfo @1 :Text;
    content @2 :Text;
    signature @3 :Text;
  }
  '';
}
