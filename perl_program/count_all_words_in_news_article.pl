use File::Find::Rule;
use List::Uniq ':all';
use String::Util ':all';

# NOTE: This program consume a large amount of memory. Please remind it.
sub create_word_array() {
    
    my @text_file = File::Find::Rule->file()->in( '../text_data/20news-18828' );
    my $concatenated_str = "";
    foreach my $i (@text_file){
        open(my $fh, '<:encoding(UTF-8)', $i) or die "Could not open file '$i' $!";
        print "Now reading...".$i.".\n";
        while (my $row = <$fh>) {  
            chomp $row;
            $concatenated_str.=$row;
        }
    }

    # Removing punctuations.
    $concatenated_str =~ s/[[:punct:]]//g;
    $concatenated_str = lc $concatenated_str;

    my @splitted_words = split(" ", $concatenated_str);
    #@splitted_words = uniq(@splitted_words);
    
    return @splitted_words;
}

@splitted_words = create_word_array();

# Decleare dictionary.
my %word_count;

# Declare unique word first.
foreach my $i (uniq(@splitted_words)) {
    $word_count{$i} = 0;
    print "$i///";
}

# Then calculate the words.
foreach my $i (@splitted_words) {
    $word_count{$i} += 1;
}

foreach my $i (sort { $word_count{$a} <=> $word_count{$b} } keys(%word_count)) {
    print "The number of word $i is $word_count{$i}\n";
}


# Reference  Lang K., & Rennie J. (1997). The 20 newsgroups data set . Retrieved from http://qwone.com/~jason/20Newsgroups/