# haskell-dockerfiles

Dockerfiles for Haskell

- [matsubara0507/stack-build](https://hub.docker.com/r/matsubara0507/stack-build/)
    - build haskell project by stack
- [matsubara0507/ubuntu-for-haskell](https://hub.docker.com/r/matsubara0507/ubuntu-for-haskell/)
    - this image is base image for binary that build by stack
    - [ubuntu-for-haskell-with-git](ubuntu-for-haskell-with-git) is installed git to [ubuntu-for-haskell](ubuntu-for-haskell) image.

## Develop

build image

```
$ make image dir=DIRECTORY tag=IMAGE_NAME_WITH_TAG
```

push IMAGE

```
$ make image tag=IMAGE_NAME_WITH_TAG
```

### Build Dockerfile

can build Dockerfile with [dockwright](https://github.com/matsubara0507/dockwright).

```
$ make dockerfile dir=DIRECTORY
```
