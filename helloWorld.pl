#!/usr/bin/perl

#anythin inside ' ' is not interpreted as syntax
print ('"Hello"',"\n");
print (qq| Hi|, "\n\n");

#print until ABC is printed (multi line printing)
print<<ABC;
1
2
3
4
5
ABC

#printing numbers
#octal
print "\n",0377, "\n";
print oct("020"), "\n";
#binary
print 0b111111111, "\n";
#hex
print hex("ABC"), "\n";

#arythmetics
print "\n", 10+12, "\n";
print 2**4, "\n\n";

#bitwise
print 51 & 85, "\n";
print ~85, "\n";
print 51 | 85, "\n";

