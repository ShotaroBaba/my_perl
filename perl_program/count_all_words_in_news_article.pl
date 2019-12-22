use File::Find::Rule;
use File::Path qw(make_path);
use List::Uniq ':all';
use String::Util ':all';
use JSON;
use Lingua::StopWords qw( getStopWords );

my $utf8_stoplist = getStopWords('en', 'UTF-8');

# NOTE: This program consume a large amount of memory. Please remind it.
sub create_word_array() {
    
    my @text_file = File::Find::Rule->file()->in( '../text_data/20news-18828' );
    my $concatenated_str = "";
    foreach my $i (@text_file){

        open(my $fh, '<:encoding(UTF-8)', $i) or die "Could not open file '$i' $!";
        #print "Now reading...".$i.".\n";
        while (my $row = <$fh>) {  
            chomp $row;
            # Concatenate the str with " "
            $concatenated_str.=$row." ";
        }
    }
    
    # Removing email address.
    $concatenated_str =~ s/[\S]+@[\S]+\.[\S]+//g;

    # Removing http address
    $concatenated_str =~ s/(ht|f)tps?:\/\/[\S]+//g;

    # Removing punctuations.
    $concatenated_str =~ s/[[:punct:]]//g;
    
    
    $concatenated_str = lc $concatenated_str;
    my @splitted_words = split(" ", $concatenated_str);

    #
    @splitted_words = grep {!/^.{1,3}$/}  @splitted_words;

    # Remove stopwords.
    @splitted_words = grep { !$utf8_stoplist->{$_} } @splitted_words;
    
    # Remove numbers.
    @splitted_words = grep {!/^\d+$/} @splitted_words;
    
    # Remove words with 30 characters.
    @splitted_words = grep {!/.{31,}/}  @splitted_words;

    return @splitted_words;
}

@splitted_words = create_word_array();

# Decleare dictionary.
my %word_count;
my %word_i_to_w;
my %word_w_to_d;

# Correspond words.
my @uniq_words = uniq(@splitted_words);
# Create lenght of splitted_words.
my $len_array = $#uniq_words + 1;

for (my $i =0; $i < $len_array ;$i+=1 ){
    $word_i_to_w{$i} = $uniq_words[$i];
    $word_w_to_i{$uniq_words[$i]} = $i;
}

# Declare unique word first.
foreach my $i (uniq(@splitted_words)) {
    $word_count{$i} = 0;
    #print "$i///";
}

# Then calculate the words.
foreach my $i (@splitted_words) {
    $word_count{$i} += 1;
}
print "The number of words: \n";
foreach my $i (sort { $word_count{$a} <=> $word_count{$b} } keys(%word_count)) {
    print "The number of word $i is $word_count{$i}\n";
}

print "Dict contents: \n";
foreach my $i (sort {$word_i_to_w{$a} cmp $word_i_to_w{$b}} keys(%word_i_to_w)){
    #print "key : $i words: ".$word_i_to_w{$i}."\n"
}

# Next, save the dictionary data to ../output folder.

# Create folder. If exists, the program does not create a program.

# Create output directory
my $output_dir = '../outputs';
-e $directory or eval { make_path($output_dir) };

my $newsarticle_20 = $output_dir."/20news_18828";
-e $newsarticle_20 or eval { make_path($newsarticle_20) };

my $i_w_output = $newsarticle_20."/output_i_w.json";
my $w_i_output = $newsarticle_20."/output_w_i.json";

print $output_dir."\n";
print $newsarticle_20."\n";
print $i_w_output."\n";
my $json = encode_json \%word_i_to_w;
#print $json;
write_text_to_file_utf8($i_w_output,$json);

$json = encode_json \%word_w_to_i;
#print $json;
write_text_to_file_utf8($w_i_output,$json);

sub write_text_to_file_utf8 {
    my ($fp, $text) = @_;
    print $fp."\n";
    open(my $fh, '>:encoding(UTF-8)', $fp)
    or die "Could not open file '$fp'";
    print $fh $text;
    close $fh;
    print "done writing $fp";
}

sub open_text_file {
    my ($fp) = @_;
    open(my $fh, '<:encoding(UTF-8)', $fp)
    or die "Could not open file '$fp';";

    my $concatenated_str = "";
    while (my $row = <$fh>) {  
        chomp $row;
        $concatenated_str.=$row." ";
    }

    return $concatenated_str;
}

sub create_array_from_text_file {
    my ($fp) = @_;
    open(my $fh, '<:encoding(UTF-8)', $fp)
    or die "Could not open file '$fp';";

    my @word_array = ();
    while (my $row = <$fh>) {  
        chomp $row;
        push(@word_array, $row);
    }

    return @word_array;
}

# Reference  Lang K., & Rennie J. (1997). The 20 newsgroups data set . Retrieved from http://qwone.com/~jason/20Newsgroups/