#!/usr/bin/perl

use strict;
use warnings;

$a = 5;
$b = 10;

#my as local variable
my $c = $a+$b;
print "$c\n" x3;

#a way to use variable as first character of word in a string
print "You bored me ${a}th time\n"; 

#chomp removes \n characters
our $string;
$string = "Darth Vader\t\n";
chomp($string);
print "$string"
