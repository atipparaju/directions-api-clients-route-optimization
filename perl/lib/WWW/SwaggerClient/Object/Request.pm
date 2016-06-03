package WWW::SwaggerClient::Object::Request;

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

use base "WWW::SwaggerClient::Object::BaseObject";

#
#
#
#NOTE: This class is auto generated by the swagger code generator program. Do not edit the class manually.
#

my $swagger_types = {
    'vehicles' => 'ARRAY[Vehicle]',
    'vehicle_types' => 'ARRAY[VehicleType]',
    'services' => 'ARRAY[Service]',
    'shipments' => 'ARRAY[Shipment]',
    'relations' => 'ARRAY[Relation]',
    'algorithm' => 'Algorithm'
};

my $attribute_map = {
    'vehicles' => 'vehicles',
    'vehicle_types' => 'vehicle_types',
    'services' => 'services',
    'shipments' => 'shipments',
    'relations' => 'relations',
    'algorithm' => 'algorithm'
};

# new object
sub new { 
    my ($class, %args) = @_; 
    my $self = { 
        #An array of vehicles that can be employed
        'vehicles' => $args{'vehicles'}, 
        #An array of vehicle types
        'vehicle_types' => $args{'vehicle_types'}, 
        #An array of services
        'services' => $args{'services'}, 
        #An array of shipments
        'shipments' => $args{'shipments'}, 
        #An array of relations
        'relations' => $args{'relations'}, 
        #
        'algorithm' => $args{'algorithm'}
    }; 

    return bless $self, $class; 
}  

# get swagger type of the attribute
sub get_swagger_types {
    return $swagger_types;
}

# get attribute mappping
sub get_attribute_map {
    return $attribute_map;
}

1;