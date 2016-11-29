#[macro_use]
extern crate rustfbp;
extern crate capnp;

component! {
    net_ndn_router_cs, contracts(data, interest)
    inputs(lookup_interest: interest
        , cache_data: data),
    inputs_array(),
    outputs( interest_miss: interest),
    outputs_array(),
    option(),
    acc(),
    fn run(&mut self) -> Result<()> {
        Ok(())
    }
}
