# Laclede's LAN Dedicated CS2D Freeplay Server

![Laclede's LAN CS2D Freeplay Server](https://raw.githubusercontent.com/LacledesLAN/gamesvr-cs2d-freeplay/refs/heads/main/.documentation/thumb-cs2d-freeplay.png "Laclede's LAN CS2D Freeplay Server")

This repository is maintained by [Laclede's LAN](https://lacledeslan.com). Its contents are heavily tailored and tweaked
for use at our charity LAN-Parties. For third-parties we recommend using this repo only as a reference example and then
building your own using [gamesvr-cs2d](https://github.com/LacledesLAN/gamesvr-cs2d) as the base image for your
customized server.

## Linux

### Download

```shell
docker pull lacledeslan/gamesvr-cs2d-freeplay;
```

### Run Self Tests

The image includes a test script that can be used to verify its contents. No changes or pull-requests will be accepted
to this repository if any tests fail.

```shell
docker run -it --rm lacledeslan/gamesvr-cs2d-freeplay ./ll-tests/gamesvr-cs2d-freeplay.sh;
```

### Start Standard (Defusal) Server

```shell
docker run -it --net=host lacledeslan/gamesvr-cs2d-freeplay ./cs2d_dedicated +sv_gamemode 0 +map de_dust
```

### Start Deathmatch Server

```shell
docker run -it --net=host lacledeslan/gamesvr-cs2d-freeplay ./cs2d_dedicated +sv_gamemode 1 +map aim_ak-colt
```

### Start Team Deathmatch Server

```shell
docker run -it --net=host lacledeslan/gamesvr-cs2d-freeplay ./cs2d_dedicated +sv_gamemode 2 +map de_dust2
```

### Start Construction Mode Server

```shell
docker run -it --net=host lacledeslan/gamesvr-cs2d-freeplay ./cs2d_dedicated +sv_gamemode 3 +map cs_assault
```

### Start Zombie Mode Server

```shell
docker run -it --net=host lacledeslan/gamesvr-cs2d-freeplay ./cs2d_dedicated +sv_gamemode 4 +map zm_cross
```

## Getting Started with Game Servers in Docker

[Docker](https://docs.docker.com/) is an open-source project that bundles applications into lightweight, portable,
self-sufficient containers. For a crash course on running Dockerized game servers check out [Using Docker for Game
Servers](https://github.com/LacledesLAN/README.1ST/blob/master/GameServers/DockerAndGameServers.md). For tips, tricks,
and recommended tools for working with Laclede's LAN Dockerized game server repos see the guide for [Working with our
Game Server Repos](https://github.com/LacledesLAN/README.1ST/blob/master/GameServers/WorkingWithOurRepos.md). You can
also browse all of our other Dockerized game servers: [Laclede's LAN Game Servers
Directory](https://github.com/LacledesLAN/README.1ST/tree/master/GameServers).
