#!/usr/bin/perl

use Net::SSH::Perl;

#When we have to Execute Perl script on remote server from local machine

my $host = "xxxx";
my $usr = "xxxx";
my $pwd = "xxxx";
my $ssh = Net::SSH::Perl->new($host);
$ssh->login($usr,$pwd);
my $arg1="abc";
# my($stdout, $stderr, $exit) = $ssh->cmd("ls -ltr");
my($stdout, $stderr, $exit) = $ssh->cmd("shell.sh $arg1");
print "$stdout\n";