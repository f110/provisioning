#!/bin/sh

rm -f /etc/yum.repos.d/fedora.repo
wget --no-check-certificate 'https://raw.github.com/f110/provisioning/master/box/yum.repos.d/Fedora19/fedora.repo' -O /etc/yum.repos.d/fedora.repo

rm -f /etc/yum.repos.d/fedora-updates.repo
wget --no-check-certificate 'https://raw.github.com/f110/provisioning/master/box/yum.repos.d/Fedora19/fedora-updates.repo' -O /etc/yum.repos.d/fedora-updates.repo
