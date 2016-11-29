#![feature(question_mark)]
#[macro_use]
extern crate rustfbp;
extern crate capnp;

component! {
  net_ndn_print, contracts(interest, data)
  inputs(interest: interest, data: data),
  inputs_array(),
  outputs(),
  outputs_array(),
  option(),
  acc(),
  fn run(&mut self) -> Result<()> {
    let mut ip_interest = self.ports.try_recv("interest")?;
    {
        let interest_reader: interest::Reader = ip_interest.read_contract()?;
        println!("received data: {:?}", interest_reader.get_name() );

    };
    let mut ip_data = self.ports.try_recv("data")?;
    {
        let data_reader: data::Reader = ip_data.read_contract()?;
         println!("received data: {:?}", data_reader.get_name() );
    };
    Ok(())
  }
}
