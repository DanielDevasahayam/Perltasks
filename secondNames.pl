use Data::Dumper;

my %map;
sub storeNames {
    print "Enter the name : ";
    my $names = <STDIN>;
    chomp $names;

    @words = split(/ /,$names);

    print("last word : ", $words[$#words], "\n");

    my $l = $map{$words[$#words]} // [];  
    push(@$l, @words);  

    $map{$words[$#words]} = $l;

    my $mapLen = scalar(keys %map);
    print "Length of the map : ", $mapLen, "\n";
    foreach my $key ( keys %$map ) { 
        print $key, " => ", $map->{$key},"\n";
    }

 }

sub main {
    print "Enter the number of words you will enter : ";
    my $n = <STDIN>;
    chomp $n;

    for (0 .. n) {
        storeNames();
    }

    print "Enter the second name you wanna search : ";
    my $secondName = <STDIN>;
    chomp $secondName;

    my $l = $map[$secondName];
    print($#l + 1);
   
}

main();