#!/usr/bin/perl

sub add{
	my $arrSize = @_;
	my $sum = 0;
    foreach $item (@_){
    	$sum += $item;
    }
    print "$sum\n";
}

add(1, 2, 3, 4, 5);