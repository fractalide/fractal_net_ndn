#![feature(question_mark)]
#[macro_use]
extern crate rustfbp;
extern crate capnp;

agent! {
  ndn_faces_socket, edges()
  inputs(),
  inputs_array(),
  outputs(),
  outputs_array(),
  option(protocol_domain_port),
  acc(), 
  fn run(&mut self) -> Result<()> {
    
    Ok(())
  }
}
    