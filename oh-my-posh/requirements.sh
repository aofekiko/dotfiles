#!/bin/bash
set -e

DIRECTORY="~/.config/oh-my-posh"
curl -s https://ohmyposh.dev/install.sh | sudo bash -s
oh-my-posh font install hack
if [ ! -d "$DIRECTORY" ]; then
  mkdir "$DIRECTORY"
fi
ln -s ./config.opm.json ${DIRECTORY}/config.opm.json
