#![feature(question_mark)]
#[macro_use]
extern crate rustfbp;
extern crate capnp;

component! {
  net_ndn_test_procinterest, contracts(net_ndn_interest, net_ndn_data, generic_text)
  inputs(),
  inputs_array(inbound_interest: net_ndn_interest),
  outputs(),
  outputs_array(outbound_data: net_ndn_data),
  option(generic_text),
  acc(),
  fn run(&mut self) -> Result<()> {

    let mut ip_inbound_interest = self.ports.recv("inbound_interest")?;
    let inbound_interest = {
        let inbound_interest_reader: net_ndn_interest::Reader = ip_inbound_interest.get_root()?;
        inbound_interest_reader.get_name() // read contract: net_ndn_interest to replace XXX
    };
    let mut out_ip_outbound_data = IP::new();
    {
      let mut variable = out_ip_outbound_data.init_root::<net_ndn_data::Builder>();
      variable.set_name("YYY"); // read contract: net_ndn_data to replace XXX
    }
    for p in self.ports.get_output_selections("outbound_data")? {
        self.ports.send_array("outbound_data", &p, out_ip_outbound_data.clone())?;
    }
    Ok(())
  }
}
