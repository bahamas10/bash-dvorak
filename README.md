bash-dvorak
===========

Provide simple functions for switching to and from dvorak

This plugin has been tested and works on Mac OS X, Linux, and Illumos.
It uses `setxkbmap` and `loadkeys` as appropriate
if AppleScript is not found.

Installation
------------

### bics

Use [bics](https://github.com/bahamas10/bics) to manage this plugin

After installing `bics`, install this plugin by running

    bics install git://github.com/bahamas10/bash-dvorak.git

### manually

    git clone git://github.com/bahamas10/bash-dvorak.git
    cd bash-dvorak
    cat dvorak.bash >> ~/.bashrc
    exec bash

Usage
-----

The first 4 characters of the homerow are functions to toggle keyboard layouts.
Run `aoeu` to switch from dvorak to qwerty and `asdf` to switch from qwerty to
dvorak.

Exports
-------

### Global Variables

None

### Environmental Variables

None

### Functions

- `aoeu()` - switch from dvorak to qwerty
- `asdf()` - switch from qwerty to dvorak

### Aliases

None

License
-------

MIT
