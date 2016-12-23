#[macro_use]
extern crate rustfbp;
extern crate capnp;

agent! {
  input(inbound_interest: interest),
  output(outbound_data: data),
  option(generic_text),
  fn run(&mut self) -> Result<Signal> {

    let mut ip_inbound_interest = self.input.inbound_interest.recv()?;
    let inbound_interest = {
        let inbound_interest_reader: interest::Reader = ip_inbound_interest.read_schema()?;
        inbound_interest_reader.get_name() // read contract: interest to replace XXX
    };
    let mut out_msg_outbound_data = Msg::new();
    {
      let mut variable = out_msg_outbound_data.build_schema::<data::Builder>();
      variable.set_name("YYY"); // read contract: data to replace XXX
    }
    self.output.outbound_data.send(out_msg_outbound_data)?;

    Ok(End)
  }
}
