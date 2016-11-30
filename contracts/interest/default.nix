{ contract, contracts }:

contract {
  src = ./.;
  contracts =  with contracts; [ ];
  schema = with contracts; ''
  @0xda3ac78deff8e9e9;

  struct Interest {
    name @0 :Text;
    nonce @1 :Int32;
  }
  '';
}
