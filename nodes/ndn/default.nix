{ subgraph, nodes, edges }:

subgraph {
  src = ./.;
  edges = with edges; [ ];
  flowscript = with nodes; with edges; ''
  // Interests
  // 1) incoming interests from local apps and forwarded to remote apps
    outbound_interest => outbound_interest faces(${ndn_faces})
  // 2) incoming interests from remote apps and forwarded to local apps
    faces() inbound_interest => inbound_interest
  // 3) incoming interests from remote apps and forwarded to remote apps
  // moot

  // Data
  // 1) incoming data from local apps and forwarded to remote apps
    outbound_data => outbound_data faces()
  // 2) incoming data from remote apps and forwarded to local apps
    faces() inbound_data => inbound_data
  // 3) incoming data from remote apps and forwarded to remote apps
  // moot
  '';
}
