## ssh-keygen-impostor

#### Joe Kamibeppu
#### COMP116 Fall 2016
#### Final project supporting material

### Contents

This repository contains two Bash scripts that load an `ssh-keygen` impostor into the current command prompt. This impostor function is meant to be a proof-of-concept of how a Bash user could unknowingly execute arbitrary commands. In order to appear legitimate, the exported function mimics the program output and user input of the OpenSSL `ssh-keygen` command. In reality, the function performs the following malicious actions.
      
  1. Creates unwanted files in the user's current directory
  2. Saves the user's potentially sensitive information (such as passphrases) into a local text file 
  3. Compromises the user's environment variables

The Bash scripts could perform other undesired actions, but these three actions have been implemented as a proof-of-concept.

### Usage

Please clone the repository into a Bash environment  
