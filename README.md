# Pwn-ubuntu
Easy to setup a docker environment(ubuntu 20.04 glibc 2.31-0ubuntu9.1) for pwn in CTF.

## Setup
You have to install docker before setup this.
```
$ git clone https://github.com/stavhaygn/pwn-ubuntu.git
$ cd pwn-ubuntu
$ sudo ./setup.sh
```

## Usage

Enter your directory and run command `pu`, directory will be mount in the container.
```
$ cd pwn/baby-bof/
$ ls 
exploit.py vuln libc.so.6

$ pu
➜  ~ cd ctf
➜  ctf ls
exploit.py vuln libc.so.6
➜  ctf ./vuln
Hello~ Do you know bof?
```

Execute `ncat -vc ./vuln -kl localhost 10000`.
```
$ pu ./vuln
$ pu
➜  ~ nc localhost 10000
Hello~ Do you know bof?
```

Set `LD_PRELOAD=./libc.so.6` and execute `ncat -vc ./vuln -kl localhost 10000`. 
```
$ pu ./vuln ./libc.so.6
➜  ~ nc localhost 10000
Hello~ Do you know bof?
```

## Tools
They are in the pwn-ubuntu.
```
pwntools
ROPgadget
one_gadget
peda
Pwngdb
nc
ncat
```

## License
MIT
