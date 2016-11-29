#![feature(question_mark)]
#[macro_use]
extern crate rustfbp;
extern crate capnp;

component! {
  ndn_faces_socket, contracts()
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
    