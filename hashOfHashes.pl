use Data::Dumper;
my %map = (
    "leo" => {"actor" => "Vijay", "actress" => "Trisha", "comedian" => "Vadivel"},
    "mi"  => {"actor" => "Tom Cruise", "actress" => "Rebecca", "comedian" => "Simon Pegg"}
);



my %heroMap = map {
    my $movieName = $_;
    my $actorName = $map{$movieName}{"actor"};
    $actorName => {"movie" => $movieName, "actress" => $map{$movieName}{"actress"}, "comedian" => $map{$movieName}{"comedian"}};
} keys %map;

print Dumper(\%heroMap);

