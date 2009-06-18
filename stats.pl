#!/usr/bin/perl 

use strict;
use warnings;

use IO::File;
use Statistics::Descriptive::Discrete;


my $file = IO::File->new;
my $stats = new Statistics::Descriptive::Discrete;

if ( $file->open("< $ARGV[0]") ){
    $stats->add_data(join ",", $_) while <$file>;
    undef $file;
}
    
print "count = ",$stats->count(),"\n";
print "uniq  = ",$stats->uniq(),"\n";
print "sum = ",$stats->sum(),"\n";
print "min = ",$stats->min(),"\n";
print "max = ",$stats->max(),"\n";
print "mean = ",$stats->mean(),"\n";
print "standard_deviation = ",$stats->standard_deviation(),"\n";
print "variance = ",$stats->variance(),"\n";
print "sample_range = ",$stats->sample_range(),"\n";
print "mode = ",$stats->mode(),"\n";
print "median = ",$stats->median(),"\n";
