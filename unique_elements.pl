my @arr = (1, 2, 3, 2, 4, 1, 5, 2, 6, 5);

my %map;

foreach my $element (@arr) {
    $map{$element}++;
}

my $len = scalar(keys %map);
print "Number of unique elements: $len\n";

foreach my $key (keys %map) {
    my $count = $map{$key};
    print "Element $key has count $count\n";
}

