![Docker](https://github.com/jpwhite3/polyglot/workflows/Docker/badge.svg)

# Level Up Coder IDE

Multi programming language container image with built-in VSCode based IDE, using [Codeserver](https://github.com/coder/code-server).

![Screen shot](https://github.com/jpwhite3/levelup-coder-ide/raw/main/images/screenshot.png)

_NOTE:_ The container image is quite large, and can be very resource intensive. Please plan accordingly.

## Base Image

This image is based on Ubuntu 23.10 (mantic)

## Included Languages & Tools

| Language Ecosystem    | Tools                                                |
| --------------------- | ---------------------------------------------------- |
| Node == 18.18.0       | nvm == 0.39.5, npm == 9.8.1                          |
| code-server == 4.19.1 | _various vscode plugins_                             |
| Python == 3.11.5      | Poetry == 1.1.13                                     |
| Java == 20.0.2        |                                                      |
| GO == 1.21.1          |                                                      |
| Dotnet == 6.0.122     | livingdoc                                            |
| Linux Utilities       | wget, curl, gpg, git, make, p7zip, vim, jq, xz-utils |

# Build Instructions

## Prerequisites

- You are running in a unix-like environment (Linux, MacOS)
- Docker Desktop, Docker Engine, or compatible container management system

## Build

Builds the image.

```bash
make build
```

## Shell

Starts a container from this image and drops you into a shell.

```bash
make shell
```

## Run

Starts a container and launches the IDE.

```bash
make run
```

## Publish

Attempts to build then publish the image to Docker Hub.

```bash
make publish
```
