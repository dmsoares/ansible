#!/usr/bin/env bash

# So we don't have to write ~/.emacs.d/bin/doom every time
PATH="$HOME/.emacs.d/bin:$PATH"

# Create a directory for our private config
mkdir ~/.doom.d  # or ~/.config/doom

# The init.example.el file contains an example doom! call, which tells Doom what
# modules to load and in what order.
cp ~/.emacs.d/init.example.el ~/.doom.d/init.el
cp ~/.emacs.d/core/templates/config.example.el ~/.doom.d/config.el
cp ~/.emacs.d/core/templates/packages.example.el ~/.doom.d/packages.el

# You might want to edit ~/.doom.d/init.el here and make sure you only have the
# modules you want enabled.

# Then synchronize Doom with your config:
doom sync

# If you know Emacs won't be launched from your shell environment (e.g. you're
# on macOS or use an app launcher that doesn't launch programs with the correct
# shell) then create an envvar file to ensure Doom correctly inherits your shell
# environment.
#
# If you don't know whether you need this or not, there's no harm in doing it
# anyway. `doom install` will have prompted you to generate one. If you
# responded no, you can generate it later with the following command:
doom env

# Lastly, install the icon fonts Doom uses:
emacs --batch -f all-the-icons-install-fonts
# On Windows, `all-the-icons-install-fonts` will only download the fonts, you'll
# have to install them by hand afterwards!
