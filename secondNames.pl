
sub main() {
    print "Enter the words using commas : ";
    my $words = <STDIN>;
    chomp $words;
    my @arr = split(/,/,$words);

    print "Enter the name you wanna search : ";
    my $secondName = <STDIN>;
    chomp $secondName;
    for my $ele(@arr) {
        my @newWords = split(/ /,$ele);
        if ($newWords[$#newWords] eq $secondName) {
            print $ele,"\n";
        }
    }
}
main();