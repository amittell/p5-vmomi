package VMOMI::ComplexType;

use constant P5NS => 'VMOMI';

sub new {
    my ($class, %args) = @_;
    my $self = { };
    
    if (%args) {
        foreach my $name (keys %args) {
            if ( grep { $_->[0] eq $name } $class->get_class_members ) {
                $self->{$name} = $args{$name};
            }
        }
    }
    return bless $self, $class;
}

sub AUTOLOAD {
    my $self = shift;
    my $name = our $AUTOLOAD;
        
    return if $name =~ /::DESTROY$/;
    $name =~ s/.*:://;
    
    $self->{$name} = shift if @_;
    
    if (not exists $self->{$name}) {
        Exception::Autoload->throw(
            message => "unknown property '$name' in " . ref $self
        );
    }
    
    return $self->{$name};
}

# TODO: Cleanup and organize the deserialization and serialization logic around LibXML::Reader
sub deserialize {
    my ($class, $reader, $si) = @_;
    my ($self, $parent_depth, $parent_name, $parent_node, $parent_class, $name, $type, $depth);
    
    return undef if not defined $reader;
    $self = { };
    
    $parent_depth = $reader->depth;
    $parent_name  = $reader->name;  
    $parent_type  = $reader->nodeType;
    $parent_class = $reader->getAttributeNs(
        'type', 'http://www.w3.org/2001/XMLSchema-instance' );
    if (defined $parent_class) {
        $class = P5NS . "::$parent_class";
    }
    
    # Enumerate child nodes (members)
    do {            
        $reader->read;
        my ($member_info, $value, $child_class, $child_type, $content, $val, $val_type);        
        
        $depth = $reader->depth;
        $name  = $reader->name; 
        $type  = $reader->nodeType;
        
        ## Start element
        if ($type == 1) {
            ($member_info) = grep { $_->[0] eq $name } $class->get_class_members;
            if (not defined $member_info) {
                Exception::Deserialize->throw(
                    message => "deserialization error: undefined class member '$name'" .
                        " for '$class'"
                );
            }
            
            my ($member_name, $member_class, $is_array, $is_mandatory) = @$member_info;
            
            $child_class = $reader->getAttributeNs(
                'type','http://www.w3.org/2001/XMLSchema-instance' );
            if ($child_class =~ m/boolean/) {
                $child_class = 'boolean';
            } elsif ($child_class =~ m/^xsd:/) {
                $child_class = undef;
            }
            if (not defined $child_class) {
                $child_class = $member_class;
            }
        
            ## Deserialize member value
            if (defined $child_class) {
                if ($child_class eq 'boolean') {
                    $content = $reader->readInnerXml;
                    if ($content =~ m/(true|1)/i) {
                        $val = 1;
                    } elsif ($content =~ m/(false|0)/i) {
                        $val = 0;
                    } else {
                        Exception::Deserialize->throw(
                            message => "deserialization error: server returned '$val'" .
                                " as a boolean for class member '$member_name' in class " .
                                "'$class'"
                        );
                    }
                } else {
                    # SimpleType, ComplexType, ManagedObjectReference, etc
                    $child_class = P5NS . "::$child_class";
                    $val = $child_class->deserialize($reader, $si);
                }
            } else {
                # Text value (string, integer, double, etc)
                $val = $reader->readInnerXml;
            }
    
            # ManagedObjectReference; determine ManagedObject type and deserialize 
            if (ref $val eq P5NS . "::ManagedObjectReference") {
                $child_class = P5NS . "::" . $val->type;
                # TODO: Add constructor method unique to ManagedObject for instantiation
                $val = $child_class->new($si, $val);
            }
            
            ## Array values are returned as references [ ]
            if ($is_array) {
                $self->{$name} = [ ] if not defined $self->{$name};
                push @{ $self->{$name} }, $val;
            } else {
                $self->{$name} = $val;
            }
            
            # Convert ArrayOf* objects to perl arrays
            $val_type = ref $val;
            if ($val_type =~ m/ArrayOf.*/) {
                @keyvalues = %$val;
                if (@keyvalues) {
                    $self->{$name} = pop @keyvalues;
                }
            }
        }
    } until ($name eq $parent_name and $type != $parent_node and $depth == $parent_depth);
    return bless $self, $class;
}


sub serialize {
    my ($self, $tag, $emit_type) = @_;
    my ($node, @class_members, $parent_class);
    
    $node = new XML::LibXML::Element($tag);
    if ($emit_type) {
        $node->setAttribute('xsi:type', $emit_type);
    }
    
    $parent_class = ref $self;

    ## Enumerate expected class members; extract for serialization
    foreach my $info ( $self->get_class_members ) {
        my ($member_name, $member_class, $is_array, $is_mandatory, $member_value, @values);
        ($member_name, $member_class, $is_array, $is_mandatory) = @$info;      
        
        ## Mandatory property missing warning; probably not necessary, but the WSDL does
        ## not always seem consistent.
        if ($is_mandatory and not exists $self->{$member_name}) {
            warn "serialization warning: mandatory property '$member_name' missing" .
                 " in class '$parent_class'";
            next;
        }
        
        ## Coerce all member values into an array for serialization as child elements
        if (exists $self->{$member_name}) {
            $member_value = $self->{$member_name};
            if (ref $member_value eq 'ARRAY') {
                @values = @$member_value;
            } else {
                @values = ($member_value);
            }
        } else {
            @values = ( );
        }
        
        foreach my $val (@values) {
            my ($child_node, $child_class, $child_value, $child_type);
            
            $child_node = new XML::LibXML::Element($member_name);
            
            # Add empty child node when child value is undefined
            if (not defined $val) {
                $node->addChild($child_node);
                next;
            }

            if (defined $member_class) {
                # Boolean
                if ($member_class eq 'boolean') {
                    if ($val =~ m/(true|1)/i) {
                        $child_value = 'true';
                    } elsif ($val =~ m/(false|0)/i) {
                        $child_value = 'false';
                    } else {
                        Exception::Serialize->throw(
                            message => "serialization error: cannot convert '$val' to" .
                                " boolean for member '$member_name' in class '$member_class'"
                        );
                    }
                    $child_node->appendText($child_value);
                    $node->addChild($child_node);
                    next;
                }
                
                # ComplexType, SimpleType
                $child_class = ref $val;

                if (P5NS . "::$member_class" ne $child_class) {
                    $child_type = $member_class;
                    if ($member_class eq 'anyType' and not $child_class) {
                        # Follow VIPerl pattern of sending all anyTypes as xsd:string.  This
                        # is known to be broken for some data types; implement Primitive object.
                        
                        # TODO: Pretty sure this logic is broken for anyType...fix it!!
                        $child_node->setAttribute('xsi:type', 'xsd:string');
                        $child_node->appendText($val);
                        $node->addChild($child_node);

                        next;
                    } 
                } 
                
                if ($member_class eq 'ManagedObjectReference') {
                    if ($child_class ne P5NS . "::ManagedObjectReference") {
                        # ManagedObject or ManagedEntity; extract ManagedObjectReference
                        # TODO: Add error handling here
                        $val = $val->{'_moref'};
                    }
                }
                
                if ($member_class ne 'anyType') {
                    if (not $child_class or not $child_class->isa(P5NS . "::$member_class")) {
                        Exception::Serialize->throw(
                            message => "serialization error: cannot serialize '$member_name'" .
                                " as '$member_class' in class '$child_class'"
                        );
                    }
                }
                
                if ($child_type) {
                    $child_node = $val->serialize($member_name, $child_type);
                } else {
                    $child_node = $val->serialize($member_name);
                }
                $node->addChild($child_node);
            } else {
                # Primitive
                $child_node->appendText($val);
                $node->addChild($child_node);
            }
        }
    }
    return $node;
}

sub get_class_members {
    return ();
}

1;