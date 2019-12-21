#!/usr/bin/perl
use List::Uniq ':all';
use String::Util ':all';

use strict; 
use warnings; 

# get stdin function.
my @str = <STDIN>;

my $concatenated_str = "";

foreach my $string_part (@str){
   $concatenated_str.=$string_part." " 
}

my @splitted_words = split(" ", $concatenated_str);
@splitted_words = uniq(@splitted_words);

# Decleare dictionary.
my %word_count;

# Declare unique word first.
foreach my $i (@splitted_words) {
    $word_count{$i} = 0;
    print "$i///";
}

# Then calculate the words.
foreach my $i (split(" ", $concatenated_str)) {
    $word_count{$i} += 1;
}

foreach my $i (keys %word_count) {
    print "The number of word $i is $word_count{$i}\n";
}