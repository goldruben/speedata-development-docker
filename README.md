# development-docker

This image contains all the software necessary to build the speedata publisher, a full featured database publishing software.
More information about the software is available at https://www.speedata.de/

To use the image do the following:

```
mkdir develop
docker run --rm -it -v $PWD/develop:/develop speedata/development:latest
cd /develop
git clone https://github.com/speedata/publisher.git
cd publisher
rake build
rake buildlib
```

To test the software use a sample `hello world` shipped with the repository:

```
cd doc/manual/doc/examples-en/helloworld/
sp
```

The PATH is set to also include `/develop/publisher/bin` which contains the `sp` binary if you follow the instructions above.
