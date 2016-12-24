{ subgraph, nodes, edges }:

subgraph {
  src = ./.;
  edges = with edges; [ ];
  flowscript = with nodes; with edges; ''
  // receiver receives packets coming from the ndn network
  // sender "sends" packets onto the ndn network
    option => option socket(${ndn_faces_socket})

    outbound_interest => outbound_interest router(${ndn_faces_router})

    // when an interest arrives your app needs to satisfy it if possible with data
    router() interest => interest

    // responding to the above interest
    data => data router()

    // when your app has an interest
    interest => interest router()

    // the response to the interest your app just expressed
    router() data => data
  '';
}
