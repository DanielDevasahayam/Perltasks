my %map1 = (
    "captain" => "Dhoni",
    "wins" => 3,
    "Losses" => 1
);

my %map2 = (
    "captain" => "Kohli",
    "wins" => 2,
    "Losses" => 0
);

my @arr = 
my @captains = map { $_->{
    
} } (\%map1, \%map2);

for my $captain (@captains) {
    print $captain, "\n";
}
