#!/bin/bash

# DESCRIPTION
# Installs Homebrew software.

# EXECUTION
# Homebrew
if ! command -v brew > /dev/null; then
  ruby -e "$(curl --location --fail --silent --show-error https://raw.githubusercontent.com/Homebrew/install/master/install)"
  export PATH="/usr/local/bin:$PATH"
  printf "export PATH=\"/usr/local/bin:$PATH\"\n" >> $HOME/.bash_profile
fi

# Readline
brew install readline

# OpenSSL
brew install openssl
brew link --force openssl

# OpenSSL OSX CA
brew tap raggi/ale
brew install openssl-osx-ca

# asciinema
brew install asciinema

# Bash
brew install bash

# Bash Completion
brew install bash-completion

# chruby
brew install chruby

# cloc
brew install cloc

# Colorized Cat
brew install ccat

# CTags
brew install ctags

# Diff So Fancy
brew install diff-so-fancy

# direnv
brew install direnv

# Elasticsearch
brew install elasticsearch

# Elm
brew install elm

# FFmpeg
brew install ffmpeg

# FLAC
brew install flac

# FZF
brew install fzf

# GDBM
brew install gdbm

# Gifsicle
brew install gifsicle

# Git
brew install git

# Go
brew install go

# GPG
brew install gpg

# GPG Agent
brew install gpg-agent

# Graphviz
brew install graphviz

# hr
brew install hr

# Htop
brew install htop

# HTTPie
brew install httpie

# ImageMagick
brew install imagemagick

# Ioping
brew install ioping

# JSON CLI Parser
brew install jq

# Keybase
brew install keybase

# libffi
brew install libffi

# libyaml
brew install libyaml

# lnav
brew install lnav

# Memcached
brew install memcached

# Mercurial
brew install hg

# Mosh
brew install mobile-shell

# Namebench
brew install namebench

# Network Grep
brew install ngrep

# Nginx
brew install nginx

# Node
brew install node

# Parallel
brew install parallel

# Peco
brew install peco

# pgcli
brew install pgcli

# Phantom.js
brew install phantomjs

# Pigz
brew install pigz

# Pipe Viewer
brew install pv

# PostgreSQL
brew install postgresql

# Pow
brew install pow

# QuickLook - Plain Text
brew cask install qlstephen

# Redis
brew install redis

# Ruby Install
brew install ruby-install

# Rust
brew install rust

# ShellCheck
brew install shellcheck

# Tag
brew install tag

# Terminal Notifier
brew install terminal-notifier

# The Silver Searcher
brew install the_silver_searcher

# tmux
brew install tmux
brew install reattach-to-user-namespace

# Tree
brew install tree

# Vim
brew install vim

# Watchman
brew install watchman

# Wry
brew install wry

# Z
brew install z
