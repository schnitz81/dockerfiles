docker-novnc
============

This is a minimal image which will help you run X server with openbox on the docker container and access it from ANY recent browser without requiring you to do any configuration on the client side.
This particular version is modified with the following
* Ubuntu 20.04
* Midori instead of Firefox.
* Cleanup of X session-files to avoid crash on second run.
* Dark-themed xterm.

## Use Cases

1. Provide system application accessible over the web easily. Lets say you want to demo a software which runs on your pc over internet without requiring the clients to install any softwares like Teamviwer,etc.

2. You can use this to create a simple use & throw linux envinronment with GUI over cloud or any VPS /Server or even at your laptop. 

Especially useful if you have to give access to your friends who come over for facebook/twittering at your PC. :)

## How to use

See comments in Dockerfile for running examples.

## This is a minimal Image

This comes only with Midori browser & Geany text editor installed if you'd like to have more softwares you can freely install them using
apt commands.

## Support

* http://docker.com for all the docker based support.


## Credits

* [NoVNC](http://kanaka.github.io/noVNC/)
* [Original docker-novnc project](https://github.com/paimpozhil/docker-novnc)
