#!/usr/bin/perl
 
# import libraries
use Time::HiRes qw( time );

# declare data sets
my @a = (8,94,-57,112,19,-77,-221,1098,216,-54,-388,897,-544,-912,2059,1118,-774,1762,1543,-261, 851,-701,444,3431,-576,-1702);
my @reversed_array = (3431,2059,1762,1543,1118,1098,897,851,444,216,112,94,19,8,-54,-57,-77,-221,-261,-388, -544,-576,-701,-774,-912,-1702);
my @array2 = (-1702,-774,-701,-544,-388,-77,-261,-221,-57,-54,8,19,-576,216,94,112,444,851,897,1762, 1098,-912,1118,1543,2059,3431);

# declare timers
my $start = time();
my $end = time();

# sort & print
print "\nARRAY1:\n@a\n";
$start = time();
heap_sort(\@a);
$end = time();
print "HEAP SORTING ARRAY1:\n@a\n";
print "\nExecution time: \n", $end - $start, " s\n";
print "------------------------------------------------------------";

print "\nREVERSED ARRAY\n@reversed_array\n";
$start = time();
heap_sort(\@reversed_array);
$end = time();
print "HEAP SORTING REVERSED ARRAY:\n@reversed_array\n";
print "\nExecution time: \n", $end - $start, " s\n";
print "------------------------------------------------------------";

print "\nARRAY2:\n@array2\n";
$start = time();
heap_sort(\@array2);
$end = time();
print "HEAP SORTING ARRAY2:\n@array2\n";
print "\nExecution time: \n", $end - $start, " s\n";
print "------------------------------------------------------------\n\n";
 

# sorting subroutines
sub heap_sort {
    my ($a) = @_;
    my $n = @$a;
    for (my $i = ($n - 2) / 2; $i >= 0; $i--) {
        down_heap($a, $n, $i);
    }
    for (my $i = 0; $i < $n; $i++) {
        my $t = $a->[$n - $i - 1];
        $a->[$n - $i - 1] = $a->[0];
        $a->[0] = $t;
        down_heap($a, $n - $i - 1, 0);
    }
}
 
sub down_heap {
    my ($a, $n, $i) = @_;
    while (1) {
        my $j = max($a, $n, $i, 2 * $i + 1, 2 * $i + 2);
        last if $j == $i;
        my $t = $a->[$i];
        $a->[$i] = $a->[$j];
        $a->[$j] = $t;
        $i = $j;
    }
}
 
sub max {
    my ($a, $n, $i, $j, $k) = @_;
    my $m = $i;
    $m = $j if $j < $n && $a->[$j] > $a->[$m];
    $m = $k if $k < $n && $a->[$k] > $a->[$m];
    return $m;
}
