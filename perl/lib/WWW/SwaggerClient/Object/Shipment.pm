=begin comment

Route Optimization API

Our Route Optimization API solves the so called vehicle routing problem fast. It calculates an optimal tour for a set of vehicles, services and constraints

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#
package WWW::SwaggerClient::Object::Shipment;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;

use base ("Class::Accessor", "Class::Data::Inheritable");


#
#
#
# NOTE: This class is auto generated by the swagger code generator program. Do not edit the class manually.
# REF: https://github.com/swagger-api/swagger-codegen
#

=begin comment

Route Optimization API

Our Route Optimization API solves the so called vehicle routing problem fast. It calculates an optimal tour for a set of vehicles, services and constraints

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#
__PACKAGE__->mk_classdata('attribute_map' => {});
__PACKAGE__->mk_classdata('swagger_types' => {});
__PACKAGE__->mk_classdata('method_documentation' => {}); 
__PACKAGE__->mk_classdata('class_documentation' => {});

# new object
sub new { 
    my ($class, %args) = @_; 

	my $self = bless {}, $class;
	
	foreach my $attribute (keys %{$class->attribute_map}) {
		my $args_key = $class->attribute_map->{$attribute};
		$self->$attribute( $args{ $args_key } );
	}
	
	return $self;
}  

# return perl hash
sub to_hash {
    return decode_json(JSON->new->convert_blessed->encode( shift ));
}

# used by JSON for serialization
sub TO_JSON { 
    my $self = shift;
    my $_data = {};
    foreach my $_key (keys %{$self->attribute_map}) {
        if (defined $self->{$_key}) {
            $_data->{$self->attribute_map->{$_key}} = $self->{$_key};
        }
    }
    return $_data;
}

# from Perl hashref
sub from_hash {
    my ($self, $hash) = @_;

    # loop through attributes and use swagger_types to deserialize the data
    while ( my ($_key, $_type) = each %{$self->swagger_types} ) {
    	my $_json_attribute = $self->attribute_map->{$_key}; 
        if ($_type =~ /^array\[/i) { # array
            my $_subclass = substr($_type, 6, -1);
            my @_array = ();
            foreach my $_element (@{$hash->{$_json_attribute}}) {
                push @_array, $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \@_array;
        } elsif (exists $hash->{$_json_attribute}) { #hash(model), primitive, datetime
            $self->{$_key} = $self->_deserialize($_type, $hash->{$_json_attribute});
        } else {
        	$log->debugf("Warning: %s (%s) does not exist in input hash\n", $_key, $_json_attribute);
        }
    }
  
    return $self;
}

# deserialize non-array data
sub _deserialize {
    my ($self, $type, $data) = @_;
    $log->debugf("deserializing %s with %s",Dumper($data), $type);
        
    if ($type eq 'DateTime') {
        return DateTime->from_epoch(epoch => str2time($data));
    } elsif ( grep( /^$type$/, ('int', 'double', 'string', 'boolean'))) {
        return $data;
    } else { # hash(model)
        my $_instance = eval "WWW::SwaggerClient::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}



__PACKAGE__->class_documentation({description => '',
                                  class => 'Shipment',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'id' => {
    	datatype => 'string',
    	base_name => 'id',
    	description => 'Unique identifier of service',
    	format => '',
    	read_only => '',
    		},
    'name' => {
    	datatype => 'string',
    	base_name => 'name',
    	description => 'name of shipment',
    	format => '',
    	read_only => '',
    		},
    'priority' => {
    	datatype => 'int',
    	base_name => 'priority',
    	description => 'priority of service, i.e. 1 &#x3D; high, 2 &#x3D; normal, 3 &#x3D; low. default is 2.',
    	format => '',
    	read_only => '',
    		},
    'pickup' => {
    	datatype => 'Stop',
    	base_name => 'pickup',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'delivery' => {
    	datatype => 'Stop',
    	base_name => 'delivery',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'size' => {
    	datatype => 'ARRAY[int]',
    	base_name => 'size',
    	description => 'array of capacity dimensions',
    	format => '',
    	read_only => '',
    		},
    'required_skills' => {
    	datatype => 'ARRAY[string]',
    	base_name => 'required_skills',
    	description => 'array of required skills',
    	format => '',
    	read_only => '',
    		},
    'allowed_vehicles' => {
    	datatype => 'ARRAY[string]',
    	base_name => 'allowed_vehicles',
    	description => 'array of allowed vehicle ids',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->swagger_types( {
    'id' => 'string',
    'name' => 'string',
    'priority' => 'int',
    'pickup' => 'Stop',
    'delivery' => 'Stop',
    'size' => 'ARRAY[int]',
    'required_skills' => 'ARRAY[string]',
    'allowed_vehicles' => 'ARRAY[string]'
} );

__PACKAGE__->attribute_map( {
    'id' => 'id',
    'name' => 'name',
    'priority' => 'priority',
    'pickup' => 'pickup',
    'delivery' => 'delivery',
    'size' => 'size',
    'required_skills' => 'required_skills',
    'allowed_vehicles' => 'allowed_vehicles'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
