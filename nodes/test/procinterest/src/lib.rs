#![feature(question_mark)]
#[macro_use]
extern crate rustfbp;
extern crate capnp;

agent! {
  net_ndn_test_procinterest, edges(interest, data, generic_text)
  inputs(),
  inputs_array(inbound_interest: interest),
  outputs(),
  outputs_array(outbound_data: data),
  option(generic_text),
  acc(),
  fn run(&mut self) -> Result<()> {

    let mut ip_inbound_interest = self.ports.recv("inbound_interest")?;
    let inbound_interest = {
        let inbound_interest_reader: interest::Reader = ip_inbound_interest.read_schema()?;
        inbound_interest_reader.get_name() // read contract: interest to replace XXX
    };
    let mut out_ip_outbound_data = IP::new();
    {
      let mut variable = out_ip_outbound_data.build_schema::<data::Builder>();
      variable.set_name("YYY"); // read contract: data to replace XXX
    }
    for p in self.ports.get_output_selections("outbound_data")? {
        self.ports.send_array("outbound_data", &p, out_ip_outbound_data.clone())?;
    }
    Ok(())
  }
}
