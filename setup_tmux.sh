#!/bin/bash
cd ~ && git clone --single-branch https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
cd -
sed -i "s/unbind p/#unbind p/" ~/.tmux.conf
sed -i "s/unbind n/#unbind n/" ~/.tmux.conf
sed -i "s/bind p/#bind p/" ~/.tmux.conf
