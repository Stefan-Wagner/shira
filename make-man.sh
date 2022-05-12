#!/bin/bash
pandoc --standalone --to man shira.1.md -o shira.1
gzip -k shira.1
sudo ln -s $PWD/shira.1.gz /usr/share/man/man1/
