package VMOMI;

use 5.006;
use strict;
use warnings;

our $VERSION = '6.0.0001';

use Class::Autouse qw( );
use Exception::Class(
    'Exception',
	'Exception::SoapFault' => {
	    isa     => 'Exception',
		fields	=> [ 'faultcode', 'detail', 'faultstring' ] },
	'Exception::Autoload' => {
	    isa     => 'Exception' },
	'Exception::Deserialize' => {
	    isa     => 'Exception' },
	'Exception::Serialize' => {
	    isa     => 'Exception' },
	'Exception::Protocol' => {
	    isa     => 'Exception' },
);

Class::Autouse->autouse_recursive("VMOMI");

1;
