# What if nix-build told you why it's doing a rebuild?

This is an experiment to wrap nix with the wonderful `nix-diff` project.

`./nix-build-diff [nix-instantiate-options]`

## Demo

`$ ./nix-build-diff ./nixos-19.03.nix`
```
/nix/store/83vqfmpq19g0rkgjf0sa319x919p0vvg-hello-2.10
```
`$ ./nix-build-diff ./nixos-unstable.nix`
```
/nix/store/qr8llfilb8grhigkrq4s5hc2sr4ap4pi-hello-2.10
- /nix/store/5xxmnpc9vx09day5pmqa7pkg3vnxjgz1-hello-2.10.drv:{out}
+ /nix/store/ygmx2889nhv4jzj3bx9vw097nrjvw1p5-hello-2.10.drv:{out}
```