# frac_net_ndn
## Fractalide; Networking; Named Data Networking

![Image Alt](http://images.cnitblog.com/blog/502711/201407/250109536504481.png)
---
### Project Description:

"The Named Data Networking (NDN) project aims to develop a new Internet architecture that can capitalize on strengths — and address weaknesses — of the Internet’s current host-based, point-to-point communication architecture in order to naturally accommodate emerging patterns of communication. By naming data instead of their locations, NDN transforms data into a first-class entity. The current Internet secures the data container. NDN secures the contents, a design choice that decouples trust in data from trust in hosts, enabling several radically scalable communication mechanisms such as automatic caching to optimize bandwidth." - https://named-data.net
### Problem:

Microservices generally have zero to no security. Extracting data from a location requires a lot of wetware.
### Solution:

Named Data Networking lifts application development to using names and builds security into the protocol.
### Stability:

Experimental

### Build Instructions
Make sure you have installed [nix](https://nixos.org/nix) installed, most likely your package manage has `nix` available, if not you'll need to compile from source.
```
$ NIX_PATH="nixpkgs=https://github.com/NixOS/nixpkgs/archive/125ffff089b6bd360c82cf986d8cc9b17fc2e8ac.tar.gz:fractalide=https://github.com/fractalide/fractalide/archive/master.tar.gz"
$ git clone git@github.com:fractalide/frac_workbench.git
$ cd frac_workbench
$ nix-build
```
