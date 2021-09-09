# Lecture Notes: September 7, 2021 and for September 9, 2021


# Deferred from last time

  1. Just afternoon Class
     - Quick intro to SSH

  1. Review of Mathematical Review


# Agenda: Sept 7
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
       * OSI/ISO and TCP/IP
         - 7 layers of abstraction, 
            - flow between layers (up and down via a well defined API)
            - flow across the network
         - 2 sections: host layers and media layers
       * Errors in transmission
         - checksum
         - everything is transmitted as a series of 0's and 1's 
         - hence we go through a process of encoding and decoding continuously  

     - Models of Computation (deferred to Sept 9)
       * Sequential and Combinational Circuits are essential to COMP122
       * Theoretical, Abstract (ISA), and Physical 


# Agenda: Sept 9
  1. Announcement
     - UID number stuff
     - ssh key check
     - checksum lab
        - parity:   even and odd, used to detect an error in transmission
        - checksum:  used to detect an error in transmission

  1. (afternoon) Mathematical Review

  1. Quick Review of Models of Communication
  
  1. Checksum Lab

  1. Pickup Models of Computation








### Notes of CLI commands discussed
  - ssh, scp, ssh-keygen
  - cd, pushd, and popd
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



