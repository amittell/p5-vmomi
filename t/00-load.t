#!perl -T
use 5.006;
use strict;
use warnings;
use Test::More;

plan tests => 1;

BEGIN {
    use_ok( 'VMOMI' ) || print "Bail out!\n";
}

diag( "Testing VMOMI $VMOMI::VERSION, Perl $], $^X" );
