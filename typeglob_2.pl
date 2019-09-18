#https://www.cs.ait.ac.th/~on/O/oreilly/perl/advprog/ch03_02.htm

$a=10;
*b=*a;
$b++; # 1. Increment $a indirectly through the typeglob
$r = \$a; $$r++;  # 2. Increment $a indirectly through the reference

@array = (10,20);
DoubleEachEntry(*array); # @array and @copy are identical.
print "@array \n"; # prints 20 40

sub DoubleEachEntry {
    # $_[0] contains *array
    local *copy = shift;  # Create a local alias
    foreach $element (@copy) {
        $element *= 2;
    }
}