# docker-stacks

[![Build Status](https://travis-ci.org/cleverway/docker-stacks.svg?branch=master)](https://travis-ci.org/cleverway/docker-stacks)

Lightweight Debian-based Docker stacks

## Usage

### With [Task][task]

First choose the stack you want to use ("grav-1" in the example below) and then download and install it using [Task][task].

```
export STACK=grav-1
wget https://raw.githubusercontent.com/cleverway/docker-stacks/master/Taskfile.yml && task download && cd $STACK && task install
```

List available tasks via `task ls`.
