use File::Find::Rule;
use File::Path qw(make_path);
use List::Uniq ':all';
use String::Util ':all';
use JSON;
use Lingua::StopWords qw( getStopWords );
use Lingua::Stem::Snowball;

my $utf8_stoplist = getStopWords('en', 'UTF-8');

# Declare a new stemmer.
my $stemmer = Lingua::Stem::Snowball->new( lang => 'en' );
# NOTE: This program consume a large amount of memory. Please remind it.
sub create_word_array() {
    
    my @text_file = File::Find::Rule->file()->in( '../text_data/20news-18828' );
    my %text_dict;

    foreach my $i (@text_file){
        open(my $fh, '<:encoding(UTF-8)', $i) or die "Could not open file '$i' $!";
        my $concatenated_str = "";
        #print "Now reading...".$i.".\n";
        while (my $row = <$fh>) {  
            chomp $row;
            # Concatenate the str with " "
            $concatenated_str.=$row." ";   
        }
        # print '*******************************************************************';
        # print $concatenated_str;
        # print '*******************************************************************';
        $concatenated_str =~ s/[\S]+@[\S]+\.[\S]+//g;

        # Removing http address
        $concatenated_str =~ s/(ht|f)tps?:\/\/[\S]+//g;

        # lower characters;
        $concatenated_str = lc $concatenated_str;

        my @tmp_array = split /\s+/,  $concatenated_str;

        # Remove stopwords before removing punctuation.
        @tmp_array = grep { !$utf8_stoplist->{$_} } @tmp_array; 
        
        # Removing punctuation from all elements in the array.
        @tmp_array = map { (my $tmp = $_) =~ s/[[:punct:]]//g; $tmp; } @tmp_array;

        # Remove space:
        @tmp_array = grep {!/^\s*$/}  @tmp_array;

        # Removing the characters with numbers.
        @tmp_array = map { (my $tmp = $_) =~ s/^[\S]*[0-9]+[\S]*$//g; $tmp; } @tmp_array;

        $stemmer->stem_in_place(\@tmp_array);
        @tmp_array = grep {!/^.{1,3}$/}  @tmp_array;
        
        # Remove numbers.
        @tmp_array = grep {!/^\d+$/} @tmp_array;
        
        # Remove words with 30 characters.
        @tmp_array = grep {!/.{31,}/} @tmp_array;
        # Put generated array to text.
        # print @tmp_array;
        #print "\n\nArray Result: \n\n".$tmp_array;
        # print ("\n\ncontents of tmp array: ".join(" ", @tmp_array)."\n\n");
        $text_dict{$i} = \@tmp_array;
        
    }

    return %text_dict;
}

my %split_words = create_word_array();

print "Process finished!";

my %word_count;
foreach my $f_value (keys %split_words){
    my $tmp_arr_len = $#{$split_words{$f_value}} + 1;
    for(my $j=0; $j < $tmp_arr_len; $j+=1){
        $word_count{$split_words{$f_value}->[$j]} += 1;
    }
}

my %word_i_to_w;
my %word_w_to_i;
my $counter = 0;

foreach my $word_count_key (keys %word_count){
    $word_i_to_w{$counter} = $word_count_key;
    $word_w_to_i{$word_count_key} = $counter;
    $counter+=1;
}

# Count the occurrence of all words and then store it as an corpus...

my %corpus;
foreach my $f_value (keys %split_words) {

    my $tmp_arr_len = $#{$split_words{$f_value}} + 1;
    my %count_dict;

    # Count the number of occurrence.
    
    for(my $j=0; $j < $tmp_arr_len; $j+=1){
        $count_dict{ $word_w_to_i{ $split_words{$f_value}->[$j]} } += 1;
    }
    $corpus{$f_value} = \%count_dict;
}

my $output_dir = '../outputs';
-e $directory or eval { make_path($output_dir) };

my $newsarticle_20 = $output_dir."/20news_18828";
-e $newsarticle_20 or eval { make_path($newsarticle_20) };

my $i_w_output = $newsarticle_20."/output_i_w.json";
my $w_i_output = $newsarticle_20."/output_w_i.json";
my $word_count_output = $newsarticle_20."/output_word_count.json";
my $corpus_output = $newsarticle_20."/output_corpus.json";
my $gensim_dict_output = $newsarticle_20."/output_dict_gensim.tsv";
my $gensim_corpus_output = $newsarticle_20."/outputo_corpus_gensim.json";
my $json = encode_json \%word_i_to_w;
write_text_to_file_utf8($i_w_output,$json);
$json = encode_json \%word_w_to_i;
write_text_to_file_utf8($w_i_output,$json);

write_text_to_file_utf8($word_count_output, encode_json \%word_count);
write_text_to_file_utf8($corpus_output, encode_json \%corpus);
write_dict_gensim_utf8($gensim_dict_output, %word_w_to_i,%word_count);

write_corpus_gensim_utf8($gensim_corpus_output);

# Write gensim format dictionary
sub write_dict_gensim_utf8 {
    my $fp = $_[0];
    my $word_w_to_i = $_[1];
    my $word_count = $_[2];

    open(my $fh, '>:encoding(UTF-8)', $fp)
    or die "Could not open file '$fp'";
    foreach my $dict_key (keys %word_w_to_i){
        print $fh $word_w_to_i{$dict_key}."\t".$dict_key."\t".$word_count{$dict_key}."\n";
    }
    close $fh;
    print "\ndone writing $fp";
}

# Write gensim format corpus
sub write_corpus_gensim_utf8 {
    
    my $fp = $_[0];
    my $tuple_str = "[";
    foreach my $corpus_key (keys %corpus){
        $tuple_str.="[";
        $inside_tuple="";
        foreach my $tuple_key (keys %{$corpus{$corpus_key}}){
            $inside_tuple.="($tuple_key,".$corpus{$corpus_key}{$tuple_key}."),";
            
        }
        
        $inside_tuple =~ s/,+$//;
        $tuple_str.=$inside_tuple."],"
    }

    $tuple_str =~ s/,+$//;
    $tuple_str.="]";
    open(my $fh, '>:encoding(UTF-8)', $fp)
    or die "Could not open file '$fp'";
    print $fh $tuple_str;
    close $fh;
    print "done writing $fp";
    
}

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