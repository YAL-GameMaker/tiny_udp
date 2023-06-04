# tiny_udp

**Quick links:** [itch.io](https://yellowafterlife.itch.io/gamemaker-tiny-udp) (pre-built binaries)
	· [documentation](https://yal.cc/docs/gm/tiny_udp)  
**Platforms:** Windows, Windows (YYC)  
**Versions:** GameMaker: Studio, GameMaker Studio 2, GMS2.3/GM2022+

This is a minimalist  Winsock wrapper for UDP sockets.

It can create a socket, destroy a socket, bind it to a port, and send/receive datagrams. That's it, really.

Also it only supports IPv4 and doesn't do name resolution, but it has synchronous polling
(good for quick [deterministic netcode](https://yal.cc/preparing-your-game-for-deterministic-netcode/) tests and mods).

Made for myself as a makeshift replacement for
[FaucetNetworking](https://github.com/Medo42/Faucet-Networking-Extension/)
(which also had synchronous polling)
in GM2022, but maybe you'll have a use for it too.


## Meta

**Author:** [YellowAfterlife](https://github.com/YellowAfterlife)  
**License:** MIT