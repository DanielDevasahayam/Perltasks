=Create an empty Hash H
Create a key with name 'array1' and store the reference of the Array C which u got in above program.
Create a key with name 'array2' and store the reference of the Array D which u got in above program.
Now loop thru each array by iterating the keys of hash H.
=cut

my @arr1 = (1,2,3,4,5);
my @arr2 = (5,4,3,2,1);
my $n=5;
my %map ;

my $arr1_ref = \@arr1;
$map{"array1"} = $arr1_ref;

my $arr2_ref = \@arr2;
$map{"array2"} = $arr2_ref;

print "Printing the two arrays by iterating the map : \n";
foreach my $key (keys %map) {
    my @arr = @{$map{$key}};

    for my $ele (@arr) {
        print $ele," ";
    }
   print("\n");
}
