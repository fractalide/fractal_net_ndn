#[macro_use]
extern crate rustfbp;
extern crate capnp;

agent! {
    net_ndn_router_pit, edges(data, interest)
    inputs(lookup_interest: interest
        , lookup_data: data),
    inputs_array(),
    outputs(interest_miss: interest),
    outputs_array(data_hit: data),
    option(),
    acc(),
    fn run(&mut self) -> Result<()> {
        Ok(())
    }
}
