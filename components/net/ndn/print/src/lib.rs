#![feature(question_mark)]
#[macro_use]
extern crate rustfbp;
extern crate capnp;

component! {
  net_ndn_print, contracts(net_ndn_interest, net_ndn_data)
  inputs(interest: net_ndn_interest, data: net_ndn_data),
  inputs_array(),
  outputs(),
  outputs_array(),
  option(),
  acc(),
  fn run(&mut self) -> Result<()> {
    let mut ip_interest = self.ports.try_recv("interest")?;
    {
        let interest_reader: net_ndn_interest::Reader = ip_interest.get_root()?;
        println!("received data: {:?}", interest_reader.get_name() );

    };
    let mut ip_data = self.ports.try_recv("data")?;
    {
        let data_reader: net_ndn_data::Reader = ip_data.get_root()?;
         println!("received data: {:?}", data_reader.get_name() );
    };
    Ok(())
  }
}
