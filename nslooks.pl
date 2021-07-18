#!/bin/perl

use Net::Nslookup;

my @domains = ();

my @stash;

foreach my $addr (@domains) {
	@stash = nslookup( domain => $addr, type => "MX", server => '1.1.1.1', timeout => '5');
	echo "$addr,$stash[0]";
}

