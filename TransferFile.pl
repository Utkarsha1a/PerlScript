#!/usr/bin/perl
use strict;

use Net::SCP::Expect;


opendir(DH, "--src_path--");
my @files = readdir(DH);
closedir(DH);

foreach my $file (@files)
{
	my $user = 'user';
	my $pass = 'pass';
	my $host = '120.11.42.54';
	my $src_path = "--src_path--";
	my $dst_path = "--dst_path--";
	
    next if($file =~ /^\.$/);
	#print $file;
	my $csv = $src_path.$file;
	my $s = Net::SCP::Expect->new;

	$s->login($user, $pass);
	$s->scp($csv,"$host:$dst_path");
}