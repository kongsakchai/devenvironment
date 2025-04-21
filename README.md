# Dev Environment

> Inspiration from this blog [4 เทคนิคง่ายๆ เพื่อจัดการ Dev Environment แบบเนี๊ยบๆ ทันใจวัยทีน ⚡️](https://medium.com/@phoomparin/4-%E0%B9%80%E0%B8%97%E0%B8%84%E0%B8%99%E0%B8%B4%E0%B8%84%E0%B8%87%E0%B9%88%E0%B8%B2%E0%B8%A2%E0%B9%86-%E0%B9%80%E0%B8%9E%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B8%88%E0%B8%B1%E0%B8%94%E0%B8%81%E0%B8%B2%E0%B8%A3-dev-environment-%E0%B9%81%E0%B8%9A%E0%B8%9A%E0%B9%80%E0%B8%99%E0%B8%B5%E0%B9%8A%E0%B8%A2%E0%B8%9A%E0%B9%86-%E0%B8%97%E0%B8%B1%E0%B8%99%E0%B9%83%E0%B8%88%E0%B8%A7%E0%B8%B1%E0%B8%A2%E0%B8%97%E0%B8%B5%E0%B8%99-%EF%B8%8F-bf06f5a58a6e)

## Intro

Develop envinronment with short command

```sh
ws rin # start redis container
```

## Setup

Rename 'Devenvironment' folder to 'workspaces'.

```sh
mv devenvironment workspaces
```

Run setup script.

```sh
cd workspaces && ./setup.sh YOUR_PATH_IN_HOME
```

**Example:**

```sh
./setup.sh kong
```

## Manual Setup

You can do this by adding the following line to your profile file (~/.bash_profile, ~/.zshrc, ~/.profile, or ~/.bashrc).

```sh
# Workspaces
export WORKSPACE=YOUR_PATH
source $WORKSPACE/workspaces/.config
```

**Note:** This not apply untill the next time you log into your terminal. You can run the following commands for the different shells on the command line:

```sh
bash: source ~/.bashrc
zsh: source ~/.zshrc
```

## Requirement

- makefile
- podman or docker
- docker-compose
- fzf
- fd

## Command

use `gocover` to generate code coverage for your go project.

```sh
gocover args 
```

use `dirsearch` to search directory with fzf.

```sh
dirsearch args
```

use `docker` command instead of `podman` for podman user.

```sh
docker args
```

> [!Note]
> You can disable this by removing the
>
> ```sh
> export PATH=$PATH:$SCRIPTS/podman   # Use docker commands instead of podman
> ```
>
> in `~/.config/workspaces/.config`.

use `ws` command to start container. alais of `docker compose up -d`.

```sh
ws rin # start redis container
ws marin # start mariadb container
ws roxy # start cloudbeaver container
ws yuki # start mysql container
ws maomao # start mongo container
```

use `ws arg stop` to stop container. alais of `docker compose down`.

```sh
ws rin stop # stop redis container
```

use `ws arg cp` to copy `docker-compose.yml` to current directory.

```sh
ws rin cp # copy redis docker-compose.yml to current directory
```

use `wg`, `pg`, `lg` and `brg` to change directory to `workspaces` folder.

```sh
wg # go to workspaces folder
pg # go to projects folder
lg # go to lab folder
brg # go to brains folder
```
