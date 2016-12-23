#[macro_use]
extern crate rustfbp;
extern crate capnp;

agent! {
    input( lookup_interest: interest),
    output(interest_hit: interest),
    fn run(&mut self) -> Result<Signal> {
        Ok(End)
    }
}
