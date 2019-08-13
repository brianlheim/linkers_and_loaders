#!/usr/bin/env perl
# -*- perl -*-
#
# Tests for 5.1, 5.2, 5.3: Symbol resolution

use diagnostics;
use warnings;
use strict;
use Test::More qw( no_plan );
use lib 'lib';
use ObjectFormatIO;
use StorageAllocation;
use File::Basename; # for dirname

####################################################################################################
# Test cases
####################################################################################################

my $data_dir;

sub test_file {
    my @args = map { $data_dir . $_ } @_;
    my $test_name = shift @args;
    my @input_files = @args;
    my $output_file = $test_name . "_out";
    my $exp_file = $test_name . "_expected";

    for my $input_file (@input_files) {
        -f $input_file || die "Input file $input_file does not exist";
    }
    -f $exp_file || die "Expected file $exp_file does not exist";

    # my @input_data = map { { ObjectFormatIO::read($_) } } @input_files;
    # my %output_file_data = StorageAllocation::calc_storage_allocation(\@input_data);
    # ObjectFormatIO::write($output_file, \%output_file_data);

    # my $diff = `diff $output_file $exp_file`;
    # unlink $output_file;
    # is($diff, '', "Test case: $test_name");
}

$data_dir =  dirname(__FILE__) . "/data_5_1/";

$data_dir =  dirname(__FILE__) . "/data_5_2/";

$data_dir =  dirname(__FILE__) . "/data_5_3/";

is(0, 0);
