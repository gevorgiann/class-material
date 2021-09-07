# Lecture Notes: September 2, 2021


# Deferred from lasttime

  1. Just afternoon Class
     - Quick intro to SSH

  1. Review of Mathematical Review


# Agenda
  1. Announcements
  1. Deferred Material
     * Review of Mathematical Review
     * SSH
       1. ssh, scp
       1. ssh keys
       1. commandline:
          - cd, PATH, popd, pushd
          - javac, java
  ---
  1. Models of Computation and Communication
     - Models of Communication
     - Models of Computation


### Notes of CLI commands discussed
  - ssh, scp, ssh-keygen
  - cd, pushd, and popld
  - javac and java:
  - time
  - script

### Notes on SSH files
  1. Client-Side
    - .ssh: Located within your $HOME directory, it a directory for all of your ssh-related configuration files
    - .ssh/known_hosts: a text file with the public for all the servers you have accessed
    - .ssh/id_rsa.pub: your public key
    - .ssh/id_rsa: your private key -- never share with anyone!
  1. Server-Side
    - .ssh/authorized_keys: a text file with the public keys for those that are authorized to log into your account.



