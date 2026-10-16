# Development Containers

**devcontainer** is an open specification to use a container as a development environment.
It can be used to run an application, to separate tools needed for the specific project from host OS, to create reproducible environments, etc.

There are several clients that support dev container specification.

## Dev Container CLI

`devcontainer` cli is a reference implementation of the spec.

By default, cli uses docker to create containers. You can change that with the following parameter.

```sh
devcontainer up --docker-path /usr/bin/podman
```

## DevPod

`DevPod` is a tool that uses dev containers standard to create development environments. It can be used to create containers
on local machine, cloud or kubernetes cluster.

Similarly to `devcontainer` cli, DevPod uses docker to run local containers. We can use podman instead by setting DOCKER_PATH option with following commands.

```sh
devpod provider add docker
devpod provider set-options docker -o DOCKER_PATH=podman
```

When dev container is created, new ssh config entry is added in the background with that name. You can change default config path, and include that file in the main config to keep ssh host entries clean.

```sh
devpod context set-options -o SSH_CONFIG_PATH=$HOME/.ssh/devpod_config
```
