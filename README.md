# How to Securely Transfer Files Between Servers

![Perl](https://img.shields.io/badge/perl-%2339457E.svg?style=for-the-badge&logo=perl&logoColor=white) ![Shell Script](https://img.shields.io/badge/shell_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white)

Transferring or  moving files between local machines or two remote machines is a basic requirement.Sometimes programmers want to develop scripts that will help them to transfer file from one system to another.
There are many ways to achieve that. In this article, we talk about scp (secure copy command) that encrypts the transferred file without password using shell script and will talk about Net::SCP::Expect module in Perl to transfer files.

## 1. Transfer Files Between Servers with scp
To use scp you have to make the other server(where you want to transfer files) passwordless. This you can do with the help of your local admin
```
scp localmachine/path_to_the_file username@server_ip:/path_to_remote_directory
```

1.a Copy all files in a local directory to a remote directory

```
scp -r localmachine/path_to_the_file username@server_ip:/path_to_remote_directory
```

## 2. Transfer Files Between Servers using Perl
Suppose if the ownership of server is not with you at that time we can't make it passwordless.At that time you have to tranfer files with password.
So below is the perl code to transfer files using password.

For this, I am using perl module named Net::SCP::Expect

The perl script has 3 variables
$host = Which you need to provide the remote server name

$user_name =  The name of the user for example root,apache etc.,

$password = The password for the username you are providing.


