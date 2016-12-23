#[macro_use]
extern crate rustfbp;
extern crate capnp;

agent! {
  option(protocol_domain_port),
  fn run(&mut self) -> Result<Signal> {

    Ok(End)
  }
}
