use List::Util qw( max );

my %map1 = (
    "captain" => "Dhoni",
    "wins" => 3,
    "Losses" => 1
);
my %map7 = (
    "captain" => "Dhoni",
    "wins" => 3,
    "Losses" => 1
);

my %map2 = (
    "captain" => "Kohli",
    "wins" => 2,
    "Losses" => 0
);

my @arr = (\%map1,\%map2);

my @captains = map {$_->{"captain"}} (@arr);
print join(",",@captains),"\n";

my $maxWins = max (map {$_->{"wins"}} (@arr));
print "maxWins : ",$maxWins,"\n";

my @rem = grep {$_->{"wins"} == $maxWins}  (@arr);
print $rem[0]{"captain"};
