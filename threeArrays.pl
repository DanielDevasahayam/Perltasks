=Create a perl array with some 5 strings/names. ( Array A ) 
Get a new name from user and push it to the existing array and print it
Get a new array from user having some set of 5 strings/usernames  ( Array B ) and append that to the original array ( Array A+B  = C ).
Sort the resultant array C using lexical sorting.
Get a new array ( Array D ) with some 3 usernames and do an intersection with ( Array C) and print the result.
De reference the array C.
=cut
use Array::Utils qw(:all);

print("Enter the size of array 1 : ");
my $n1 = <STDIN>;
chomp $n1;
my @arr1;

sub PrintList {
   my @list = @_;
   for my $i (@list) {
    print $i," ";
   }
   print "\n";
}

for (1 .. $n1) {
    my $ele = <STDIN>;
    chomp $ele;
    push(@arr1,$ele);
}
PrintList(@arr1);
print("Enter the size of array 2 : ");
my $n2 = <STDIN>;
chomp $n2;
my @arr2;
for (1 .. $n2) {
    my $ele = <STDIN>;
    chomp $ele;
    push(@arr2,$ele);
}


my @arr3 = (@arr1,@arr2);
my $n3 = $n1 + $n2;

print "Appended arr1 and arr2 and stored them in arr3 and sorted in lexicographical order : ";
@arr3 = sort(@arr3);
PrintList(@arr3);

print "Enter the size of the 4th array : ";
my $n4 = <STDIN>;
my $var = 1;

for (1 .. $n4) {
    my $ele = <STDIN>;
    chomp $ele;
    push(@arr4,$ele);
}
my @isect = intersect(@arr3, @arr4);

print "After intersection of arr3 and arr4 : ";
PrintList(@isect);


print "Referencing Array 3 : ";
my $arr3_ref = \@arr3;

print "Printing arr3 with the dereferrenced method : ";
for my $i (0 .. $n3) {
    print @{$arr3_ref}[$i], " ";
}

print("\n");