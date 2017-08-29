#!/usr/bin/perl

my @names=("John", "Bob", "Mike");
my @ages=(21, 53, 32);

my $arrSize = @names;

for (my $i=0; $i < $arrSize; $i++) {
       print "$names[$i] is $ages[$i] years old.\n";
   }
