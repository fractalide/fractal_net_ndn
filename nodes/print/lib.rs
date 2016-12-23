#![feature(question_mark)]
#[macro_use]
extern crate rustfbp;
extern crate capnp;

agent! {
  input(interest: interest, data: data),
  fn run(&mut self) -> Result<Signal> {
    let mut ip_interest = self.input.interest.try_recv()?;
    {
        let interest_reader: interest::Reader = ip_interest.read_schema()?;
        println!("received data: {:?}", interest_reader.get_name() );

    };
    let mut ip_data = self.input.data.try_recv()?;
    {
        let data_reader: data::Reader = ip_data.read_schema()?;
         println!("received data: {:?}", data_reader.get_name() );
    };
    Ok(End)
  }
}
