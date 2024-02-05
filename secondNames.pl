=Write a perl script that could store names with multiple duplicate last names (for example, Salman Khan, Shah Rukh Khan, and Aamir Khan). The names must be got from the user through terminal. The script must allow the user to search names based on the last name (for example, Searching for khan should produce Salman Khan, Shah Rukh Khan, and Aamir Khan as results). The search must be case insensitive.
=cut
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