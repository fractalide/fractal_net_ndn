#[macro_use]
extern crate rustfbp;
extern crate capnp;

component! {
    net_ndn_router_fib, contracts(interest)
    inputs( lookup_interest: interest),
    inputs_array(),
    outputs(interest_hit: interest),
    outputs_array(),
    option(),
    acc(),
    fn run(&mut self) -> Result<()> {
        Ok(())
    }
}
