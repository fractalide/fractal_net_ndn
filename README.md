# Net NDN

## Project Description:

The Named Data Networking (NDN) project aims to develop a new Internet architecture that can capitalize on strengths — and address weaknesses — of the Internet’s current host-based, point-to-point communication architecture in order to naturally accommodate emerging patterns of communication. By naming data instead of their locations, NDN transforms data into a first-class entity. The current Internet secures the data container. NDN secures the contents, a design choice that decouples trust in data from trust in hosts, enabling several radically scalable communication mechanisms such as automatic caching to optimize bandwidth.

## Problem:

Too much wetware invested into shunting data over a point-to-point network.

## Solution:

Make data a first class citizen by referencing data by name alone.

## Stability Status:

- [x] Raw
- [ ] Draft
- [ ] Stable
- [ ] Deprecated
- [ ] Legacy

## Build Instructions
Ensure you've installed [nix](https://nixos.org/nix).
```
$ export NIX_PATH+=:fractalide=https://github.com/fractalide/fractalide/archive/v20170218.tar.gz
$ git clone git://github.com/fractalide/fractal_net_ndn.git
$ cd fractal_net_ndn
$ nix-build --argstr rs test
```
