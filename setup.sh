#!/bin/bash

if [ -h "${HOME}/.tmux.conf" ]; then
	echo "~/.tmux.conf already exists, to be removed."
	rm ${HOME}/.tmux.conf
elif [ -f "${HOME}/.tmux.conf" ]; then
	echo "~/.tmux.conf already exits, renamed to ~/.tmux.conf.backup"
	mv -v ${HOME}/.tmux.conf ${HOME}/.tmux.conf.backup
fi

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo "Create symlink ${HOME}/.tmux.conf -> ${DIR}/.tmux.conf"
ln -s ${DIR}/.tmux.conf ${HOME}/.tmux.conf
