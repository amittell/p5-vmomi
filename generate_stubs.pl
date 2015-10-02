#!/usr/bin/perl

# Entire class generation process is hacked, but *works* (reuben.stump@gmail.com)

use strict;
use warnings;

use JSON::XS;
use XML::LibXML;
use Data::Dumper;

use constant XSD_FILES_TYPES 	 => qw(core-types.xsd query-types.xsd vim-types.xsd);
use constant XSD_FILES_REQUESTS	 => qw(query-messagetypes.xsd vim-messagetypes.xsd);
use constant XSD_FILES_RESPONSES => qw(vim.wsdl);
use constant P5NS       => 'VMOMI';
use constant MODLIB     => 'lib/' . P5NS;

my (%ComplexTypes, %SimpleTypes, @Operations, %RequestTypes, %ResponseTypes);

# ComplexTypes ###########################################################################
foreach (XSD_FILES_TYPES) {
	my ($doc, @nodes);
	
	$doc = XML::LibXML->load_xml(location => $ARGV[0] . $_);
	@nodes = $doc->getElementsByTagName('complexType');
	foreach my $node (@nodes) {
		my ($class_name, $super_node, $super_name, $type_class);
		
		$class_name = $node->getAttribute('name');
		$super_node = $node->getElementsByLocalName('extension')->shift;
		
		# ManagedObjectReference is ignored
		next if $class_name eq 'ManagedObjectReference';
		
		if (defined $super_node) {
			$super_name = $super_node->getAttribute('base');
			$super_name =~ s/^vim25://;
		}
		$super_name = 'ComplexType' if not defined $super_name;
		
		$type_class = new VimType($class_name, $super_name);
		foreach my $member_node ( $node->getElementsByLocalName('element') ) {
			my ($name, $type, $min, $max);
			$name = $member_node->getAttribute('name');
			$type = $member_node->getAttribute('type');
			$min  = $member_node->getAttribute('minOccurs');
			$max  = $member_node->getAttribute('maxOccurs');
			
			$type =~ s/^vim25://;
			if ($type =~ m/^xsd:boolean/) {
				$type = 'boolean';
			} 
			if ($type =~ m/^xsd:anyType/) {
			    $type = 'anyType';
			}
			if ($type =~ m/^xsd:/) {
				$type = undef;
			}
			
			$type_class->add_member($name, $type, $min, $max);
		}
		$ComplexTypes{$class_name} = $type_class;
	}
}

# SimpleTypes ############################################################################

# Consider adding restriction nodes (attribute value text) as enum values for SimpleType.
# Could be used in some validation checking or class method type def.
foreach (XSD_FILES_TYPES) {
	my ($doc, @nodes);
	
	$doc = XML::LibXML->load_xml(location => $ARGV[0] . $_);
	@nodes = $doc->getElementsByTagName('simpleType');
	foreach my $node (@nodes) {
		my ($class_name, $restriction, $super_name, $type_class);
		
		$class_name  = $node->getAttribute('name');
		$restriction = $node->getElementsByLocalName('restriction')->shift;
		if ($restriction->getAttribute('base') !~ m/^xsd:string/) {
			die "I don't expect to see base type: " . $restriction->getAttribute('base');
		}
		
		$super_name = 'SimpleType';
		
		$type_class = new VimType($class_name, $super_name);
		$SimpleTypes{$class_name} = $type_class;
	}
}

# Requests ###############################################################################
foreach (XSD_FILES_REQUESTS) {
	my ($doc, @nodes);
	
	$doc = XML::LibXML->load_xml(location => $ARGV[0] . $_);
	@nodes = $doc->getElementsByTagName('complexType');
	foreach my $node (@nodes) {
		my ($class_name, @members);
		
		$class_name = $node->getAttribute('name');
		foreach my $member_node ( $node->getElementsByLocalName('element') ) {
			my ($name, $type, $min, $max);
			
			$name = $member_node->getAttribute('name');
			$type = $member_node->getAttribute('type');
			$min  = $member_node->getAttribute('minOccurs');
			$max  = $member_node->getAttribute('maxOccurs');
	
			$type =~ s/^vim25://;
			if ($type =~ m/^xsd:boolean/) {
				$type = 'boolean';
			} 
			if ($type =~ m/^xsd:anyType/) {
			    $type = 'anyType';
			}
			if ($type =~ m/^xsd:/) {
				$type = undef;
			}
	
			push @members, [$name, $type, $min, $max];
		}
		
		$RequestTypes{$class_name} = \@members;
	}
}

# Responses ##############################################################################
foreach (XSD_FILES_RESPONSES) {
	my ($doc, $root, $schema, @nodes);
	
	$doc = XML::LibXML->load_xml(location => $ARGV[0] . $_);
	$root = $doc->documentElement();
	$schema = $root->getChildrenByTagName('types')->shift->getChildrenByTagName('schema')->shift;
	
	@nodes = $schema->getChildrenByTagName('element');
	foreach my $node (@nodes) {
		my (@return_nodes, $returnval, $name, $type, $min, $max, $is_array, $is_mandatory);
		
		$name = $node->getAttribute('name');
		#next if ($name =~ m/Fault$/);
		next if ($name !~ m/Response$/);
		
		@return_nodes = $node->getElementsByTagName('element');
		if (scalar(@return_nodes) > 1) {
			die "encountered Response type with more than one expected return element!";
		}
		$returnval = shift @return_nodes;
		
		if (not defined $returnval) {
			$type = undef,
			$is_array = 0;
		} else {
			$type = $returnval->getAttribute('type');
			$min  = $returnval->getAttribute('minOccurs');
			$max  = $returnval->getAttribute('maxOccurs');
	
			$type =~ s/^vim25://;
			if ($type =~ m/^xsd:boolean/) {
				$type = 'boolean';
			} 
			if ($type =~ m/^xsd:anyType/) {
			    $type = 'anyType';
			}
			if ($type =~ m/^xsd:/) {
				$type = undef;
			}
			
			$is_array = (defined $max) ? 1 :0;
		}
		$ResponseTypes{$name} = [$type, $is_array];
	}
}

# Operations #############################################################################
foreach (XSD_FILES_RESPONSES) {
	my ($doc, $root, $schema, @nodes);
	
	$doc 	= XML::LibXML->load_xml(location => $ARGV[0] . $_);
	$root 	= $doc->documentElement();
	$schema = $root->getChildrenByTagName('types')->shift->getChildrenByTagName('schema')->shift;
	
	@nodes = $schema->getChildrenByTagName('element');
	foreach my $node (@nodes) {
		my ($name, $type, $operation, $req, $res);
	
		$name = $node->getAttribute('name');
		next if ($name =~ m/Response$/ );
		next if ($name =~ m/versionURI/);
		next if ($name =~ m/Fault$/);
	
		$type = $node->getAttribute('type');
		die "Expected an operation request type for operation '$name'" unless defined $type;
		$type =~ s/^vim25://;
        if ($type =~ m/^xsd:boolean/) {
            $type = 'boolean';
        } 
        if ($type =~ m/^xsd:anyType/) {
            $type = 'anyType';
        }
        if ($type =~ m/^xsd:/) {
            $type = undef;
        }
		
		$operation = new VimOperation(name => $name);
		
		$req = $RequestTypes{$type};
		$res = $ResponseTypes{$name . "Response"};
		
		$operation->set_returnval(type => $res->[0], is_array => $res->[1]);		
		foreach (@$req) {
			$operation->add_xarg( 
				name => $_->[0], 
				type => $_->[1], 
				min  => $_->[2], 
				max  => $_->[3], 
			);
		}
		push @Operations, $operation;
	}
}

# build ancestor list for all ComplexTypes
foreach (keys %ComplexTypes) {
	my ($type, $parent, @ancestors);
	$type = $ComplexTypes{$_};
	$parent = $type->{'super'};
	
	# Implicit understanding of ComplexType being the final ancestor
	next if $parent eq 'ComplexType';
	
	while (defined $parent) {
		my $object = $ComplexTypes{$parent};
		push @ancestors, $parent;
		$parent = $object->{'super'};
		
		if ($parent eq 'ComplexType') {
		    $parent = undef;
		}
	}
	$ComplexTypes{$_}->{'ancestors'} = \@ancestors;
}

foreach (sort keys %ComplexTypes) {
	my ($class_definition, $class_name, $super_name, @members, @ancestors);

	open FILE, ">" . MODLIB . "/$_.pm" or die "Failed to open " . MODLIB . "/$_.pm";
	
	$class_name = $_;
	$super_name = $ComplexTypes{$_}->{'super'};
	
	$class_definition .= "package " . P5NS . "::$class_name;\n";
	$class_definition .= "use parent '" . P5NS . "::$super_name';\n\n";

	@members = @{ $ComplexTypes{$_}->{'members'} };
	@ancestors = @{ $ComplexTypes{$_}->{'ancestors'} };
	
	$class_definition .= "our \@class_ancestors = ( ";
	if (scalar @ancestors > 0) {
	    $class_definition .= "\n";
	    foreach my $ancestor (@ancestors) {
	        $class_definition .= "    '$ancestor',\n";
	    }
	}
	$class_definition .= ");\n\n";
	
	$class_definition .= "our \@class_members = ( ";
	if (scalar @members > 0) {
		$class_definition .= "\n";
		foreach my $member (@members) {
			my ($name, $type, $is_array, $is_mandatory) = @$member;
			
			if (defined $type) {
				$type = "'$type'";
			} else {
				$type = 'undef';
			}
			$class_definition .= "    ['$name', $type, $is_array, $is_mandatory],\n";		
		}
	}
	
	$class_definition .= ");\n\n";
    $class_definition .= "sub get_class_ancestors {\n";
	$class_definition .= "    return \@class_ancestors;\n";
	$class_definition .= "}\n\n";
	$class_definition .= "sub get_class_members {\n";
	$class_definition .= "    my \$class = shift;\n";
	$class_definition .= "    my \@super_members = \$class->SUPER::get_class_members();\n";
	$class_definition .= "    return (\@super_members, \@class_members);\n";
	$class_definition .= "}\n\n";

#	$class_definition .= "sub get_member_info {\n";
#	$class_definition .= "    my (\$class, \$name) = \@_;\n";
#	$class_definition .= "    return undef unless \$name;\n\n";
#	$class_definition .= "    if (exists \$class_members{\$name}) {\n";
#	$class_definition .= "        return \$class_members{\$name};\n";
#	$class_definition .= "    } else {\n";
#	$class_definition .= "       return \$class->SUPER::get_member_info(\$name);\n";
#	$class_definition .= "    }\n";
#	$class_definition .= "}\n\n";
	$class_definition .= "1;\n";
	
	print FILE $class_definition;
	close FILE;
}

foreach (sort keys %SimpleTypes) {
	my ($class_definition, $class_name, $super_name);
	
	open FILE, ">" . MODLIB . "/$_.pm" or die "Failed to open " . MODLIB . "/$_.pm";
	
	$class_name = $_;
	$super_name = $SimpleTypes{$_}->{'super'};
	
	$class_definition .= "package " . P5NS . "::$class_name;\n";
	$class_definition .= "use parent '" . P5NS . "::$super_name';\n\n";
	$class_definition .= "1;\n";
	
	print FILE $class_definition;
	close FILE;
}

open FILE, ">" . MODLIB . "/SoapStub.pm" or die "Failed to open " . MODLIB . "/SoapStub.pm";

print FILE "package " . P5NS . "::SoapStub;\n";
print FILE "use parent '" . P5NS . "::SoapBase';\n\n";
#print FILE "sub new {\n";
#print FILE "    my (\$class, \%args) = \@_;\n";
#print FILE "    return \$class->SUPER::new(\%args);\n";
#print FILE "}\n\n";

foreach (@Operations) {
	my ($op_definition, $name, $returnval, $xargs, $ret_type, $ret_array);
	
	$name 		= $_->{'name'};
	$xargs 		= $_->{'xargs'};
	$returnval 	= $_->{'returnval'};
	
	
	$ret_type = $returnval->[0];
	$ret_array = $returnval->[1];
	
	if (defined $ret_type) {
		$ret_type = "'$ret_type'";
	} else {
		$ret_type = 'undef';
	}
	
	$op_definition = "";
	$op_definition .= "sub $name {\n";
	$op_definition .= "    my (\$self, \%args) = \@_;\n";
#	$op_definition .= "    my (\$x_args, \$returnval, \$fault);\n\n";
	$op_definition .= "    my \$x_args = [ ";
	if (scalar @$xargs > 0) {
		$op_definition .= "\n";
		foreach my $x (@$xargs) {
			my ($x_name, $x_type, $is_array, $is_mandatory) = @$x;
			
			if (defined $x_type) {
				$x_type = "'$x_type'";
			} else {
				$x_type = 'undef';
			}
			$op_definition .= "      ['$x_name', $x_type],\n";
		}
	}
	$op_definition .= "    ];\n";
#	$op_definition .= "    \$returnval = \$self->soap_call('$name', $ret_type, $ret_array, \$x_args, \\%args);\n";
#	$op_definition .= "    return \$returnval;\n";
	$op_definition .= "    return \$self->soap_call('$name', $ret_type, $ret_array, \$x_args, \\%args);\n";
	$op_definition .= "}\n\n";
	print FILE $op_definition;
}
print FILE "1;\n";
close FILE;



package VimOperation;

sub new {
	my ($class, %args) = @_;
	my ($self, $name);
	
	$name = delete($args{'name'});
	
	$self = {
		'name'		=> $name,
		'xargs'		=> [ ],
		'returnval'	=> [undef, 0],
	};
	return bless $self, $class;
}

sub set_returnval {
	my ($self, %args) = @_;
	my ($type, $is_array);
	
	$type		= delete($args{'type'});
	$is_array	= delete($args{'is_array'}) || 0;
	
	$self->{'returnval'} = [$type, $is_array];
	return;
}

sub add_xarg {
	my ($self, %args) = @_;
	my ($name, $type, $min, $max, $is_array, $is_mandatory);
	
	$name = delete($args{'name'});
	$type = delete($args{'type'});
	$min  = delete($args{'min'} );
	$max  = delete($args{'max'} );
	
	# mandatory?
	if (defined $min and $min eq "0") {
		$is_mandatory = 0;
	} else {
		$is_mandatory = 1;
	}
	
	# array?
	if (defined $max) {
		$is_array = 1;
	} else {
		$is_array = 0;
	}
	
	push @{$self->{'xargs'}}, [$name, $type, $is_array, $is_mandatory];
	return;
}

1;

package VimType;

sub new {
	my ($class, $name, $super) = @_;
	
	my $self = {
		class		=> $name,
		super		=> $super,
		ancestors	=> [ ],
		members		=> [ ],
	};
	return bless $self, $class;
}

sub add_member {
	my ($self, $name, $type, $min, $max) = @_;
	my ($is_array, $is_mandatory);
	
	# array?
	if (defined $max) {
		$is_array = 1;
	} else {
		$is_array = 0;
	}

	# mandatory?
	
	if (defined $min and $min eq "0") {
		$is_mandatory = 0;
	} else {
		$is_mandatory = 1;
	}
	
	push @{ $self->{'members'} }, [$name, $type, $is_array, $is_mandatory];
	return;
}



1;
