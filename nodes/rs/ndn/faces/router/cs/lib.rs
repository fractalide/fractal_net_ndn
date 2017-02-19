#[macro_use]
extern crate rustfbp;
extern crate capnp;

agent! {
    input(lookup_interest: interest
        , cache_data: data),
    output(interest_miss: interest),
    fn run(&mut self) -> Result<Signal> {
        Ok(End)
    }
}
