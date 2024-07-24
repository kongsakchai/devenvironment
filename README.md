# Dev Environment

> Inspiration from this blog [4 เทคนิคง่ายๆ เพื่อจัดการ Dev Environment แบบเนี๊ยบๆ ทันใจวัยทีน ⚡️](https://medium.com/@phoomparin/4-%E0%B9%80%E0%B8%97%E0%B8%84%E0%B8%99%E0%B8%B4%E0%B8%84%E0%B8%87%E0%B9%88%E0%B8%B2%E0%B8%A2%E0%B9%86-%E0%B9%80%E0%B8%9E%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B8%88%E0%B8%B1%E0%B8%94%E0%B8%81%E0%B8%B2%E0%B8%A3-dev-environment-%E0%B9%81%E0%B8%9A%E0%B8%9A%E0%B9%80%E0%B8%99%E0%B8%B5%E0%B9%8A%E0%B8%A2%E0%B8%9A%E0%B9%86-%E0%B8%97%E0%B8%B1%E0%B8%99%E0%B9%83%E0%B8%88%E0%B8%A7%E0%B8%B1%E0%B8%A2%E0%B8%97%E0%B8%B5%E0%B8%99-%EF%B8%8F-bf06f5a58a6e)

## Intro

Develop envinronment with short command

```
$ ws morty
```

run _docker compose up -d_

## Setup

Rename 'Devenvironment' folder to 'workspaces'.

```
$ mv devenvironment workspaces
```

Run setup script.

```
$ cd workspaces && ./setup.sh YOUR_PATH
```

**Example:**

```
$ ./setup.sh ~/kong
```

## Manual Setup

You can do this by adding the following line to your profile file (~/.bash_profile, ~/.zshrc, ~/.profile, or ~/.bashrc).

```
export DEV=YOUR_PATH
source YOUR_PATH/workspaces/script.sh
```

**Note:** This not apply untill the next time you log into your terminal. You can run the following commands for the different shells on the command line:

```
bash: source ~/.bashrc
zsh: source ~/.zshrc
```

## Requirement

- makefile
- podman
- podman-compose
