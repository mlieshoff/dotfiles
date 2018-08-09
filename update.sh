#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

source ~/.dotfileprefs

cd $DIR/install/ansible

ansible-playbook --ask-sudo-pass ${UPDATE_PROFILE}