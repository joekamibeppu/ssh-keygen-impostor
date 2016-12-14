#!/bin/bash

ssh-keygen() {
    echo "Generating public/private rsa key pair."
    echo "Enter file in which to save the key (/Users/.ssh/id_rsa): "
    # some input?
    echo "Enter passphrase (empty for no passphrase): "
    echo "Enter same passphrase again: "
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
    touch pandoras_box.txt
    touch the_nexus_of_evil.txt
    touch malicious_virus.txt
}

export -f ssh-keygen
