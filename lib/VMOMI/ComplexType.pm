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

sub deserialize {
    my ($class, $reader, $si) = @_;
    my ($self, $p_depth, $p_name, $p_ntype, $p_class, $name, $type, $depth);
    
    return undef if not defined $reader;
    $self = { };
    
    $p_name  = $reader->name;  
    $p_depth = $reader->depth;
    $p_ntype = $reader->nodeType;
    $p_class = $reader->getAttributeNs(
        'type', 'http://www.w3.org/2001/XMLSchema-instance' );
    if (defined $p_class) {
        $p_class = P5NS . "::$p_class";
    } else {
        $p_class = $class;
    }
    
    while ($reader->read) {
        my ($c_depth, $c_name, $c_ntype, $member_info, $content, $value, $value_type, 
            $ns_class);
                
        $c_name  = $reader->name;
        $c_depth = $reader->depth;
        $c_ntype = $reader->nodeType;
        $c_class = $reader->getAttributeNs(
            'type', 'http://www.w3.org/2001/XMLSchema-instance' );

        last if ($c_name eq $p_name and $c_ntype != $p_ntype and $c_depth == $p_depth);
        next if not $c_ntype == 1;
        
        ($member_info) = grep { $_->[0] eq $c_name } $p_class->get_class_members;
        if (not defined $member_info) {
            Exception::Deserialize->throw(
                message => "deserialization error: undefined class member '$c_name'" .
                    " for class '$p_class'"
            );
        }
        
        if (defined $c_class) {
            if ($c_class =~ m/boolean/) {
                $c_class = 'boolean';
            } elsif ($c_class =~ m/^xsd:/) {
                $c_class = undef;
            }
        }

        my ($m_name, $m_class, $is_array, $is_mandatory) = @$member_info;
        $c_class = $m_class if not defined $c_class;

        if ($c_class) {
            if ($c_class eq 'boolean') {
                $content = $reader->readInnerXml;
                if ($content =~ m/(true|1)/i) {
                    $value = 1;
                } elsif ($content =~ m/(false|0)/i) {
                    $value = 0;
                } else {
                    Exception::Deserialize->throw(
                        message => "deserialization error: server returned '$content'" .
                            " as a boolean for member '$name' in class '$p_class'"
                    );
                }
            } else {
                # SimpleType, ComplexType
                $ns_class = P5NS . "::$c_class";
                $value = $ns_class->deserialize($reader, $si);
            }            
        
        } else {
            # xsd type; deserialize as string
            $value = $reader->readInnerXml;
        }
        
        # ManagedObjectReference; determine ManagedObject class and deserialize 
        if (ref $value eq P5NS . "::ManagedObjectReference") {
            $ns_class = P5NS . "::" . $value->type;
            # TODO: Add constructor method unique to ManagedObject for instantiation
            $value = $ns_class->new($si, $value);
        }
        
        ## Array values are returned as references [ ]
        if ($is_array) {
            $self->{$m_name} = [ ] if not defined $self->{$m_name};
            push @{ $self->{$m_name} }, $value;
        } else {
            $self->{$m_name} = $value;
        }
        
        # Convert ArrayOf* objects to perl arrays
        $value_type = ref $value;
        if ($value_type =~ m/ArrayOf.*/) {
            @keyvalues = %$value;
            if (@keyvalues) {
                $self->{$m_name} = pop @keyvalues;
            }
        }
    }
    return bless $self, $p_class;
}

sub serialize {
    my ($self, $tag, $emit_type) = @_;
    my ($node, @class_members, $parent_class);
    
    $node = new XML::LibXML::Element($tag);
    if ($emit_type) {
        $node->setAttribute('xsi:type', $emit_type);
    }
    
    $p_class = ref $self;

    ## Enumerate expected class members; extract for serialization
    foreach my $member_info ( $self->get_class_members ) {
        my ($m_name, $m_class, $is_array, $is_mandatory, $m_value, @values);
        ($m_name, $m_class, $is_array, $is_mandatory) = @$member_info;      
        
        ## Mandatory property missing warning; probably not necessary, but the WSDL does
        ## not always seem consistent.
        if ($is_mandatory and not exists $self->{$m_name}) {
            warn "serialization warning: mandatory property '$m_name' missing" .
                 " in class '$p_class'";
            next;
        }
        
        ## Coerce all member values into an array for serialization as child elements
        if (exists $self->{$m_name}) {
            $m_value = $self->{$m_name};
            if (ref $m_value eq 'ARRAY') {
                @values = @$m_value;
            } else {
                @values = ($m_value);
            }
        } else {
            @values = ( );
        }
        
        foreach my $val (@values) {
            my ($c_node, $c_class, $c_value, $c_type);
            
            $c_node = new XML::LibXML::Element($m_name);
            
            # Add empty child node when child value is undefined
            if (not defined $val) {
                $node->addChild($c_node);
                next;
            }

            if (defined $m_class) {
                # Boolean
                if ($m_class eq 'boolean') {
                    if ($val =~ m/(true|1)/i) {
                        $c_value = 'true';
                    } elsif ($val =~ m/(false|0)/i) {
                        $c_value = 'false';
                    } else {
                        Exception::Serialize->throw(
                            message => "serialization error: cannot convert '$c_value' to" .
                                " boolean for member '$m_name' in class '$m_class'"
                        );
                    }
                    $c_node->appendText($c_value);
                    $node->addChild($c_node);
                    next;
                }
                
                # ComplexType, SimpleType
                $c_class = ref $val;

                if (P5NS . "::$m_class" ne $c_class) {
                    $c_type = $m_class;
                    if ($m_class eq 'anyType' and not $c_class) {
                        # Follow VIPerl pattern of sending all anyTypes as xsd:string.  This
                        # is known to be broken for some data types; implement Primitive object.
                        
                        # TODO: Pretty sure this logic is broken for anyType...fix it!!
                        $c_node->setAttribute('xsi:type', 'xsd:string');
                        $c_node->appendText($val);
                        $node->addChild($c_node);

                        next;
                    } 
                } 
                
                if ($m_class eq 'ManagedObjectReference') {
                    if ($c_class ne P5NS . "::ManagedObjectReference") {
                        # ManagedObject or ManagedEntity; extract ManagedObjectReference
                        # TODO: Add error handling here
                        $val = $val->{'_moref'};
                    }
                }
                
                if ($m_class ne 'anyType') {
                    if (not $c_class or not $c_class->isa(P5NS . "::$m_class")) {
                        Exception::Serialize->throw(
                            message => "serialization error: cannot serialize '$m_name'" .
                                " as '$m_class' in class '$c_class'"
                        );
                    }
                }
                
                if ($c_type) {
                    $c_node = $val->serialize($m_name, $c_type);
                } else {
                    $c_node = $val->serialize($m_name);
                }
                $node->addChild($c_node);
            } else {
                # Primitive
                $c_node->appendText($val);
                $node->addChild($c_node);
            }
        }
    }
    return $node;
}

sub get_class_members {
    return ();
}

1;