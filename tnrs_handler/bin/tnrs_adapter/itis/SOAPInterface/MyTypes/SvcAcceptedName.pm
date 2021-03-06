package MyTypes::SvcAcceptedName;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://data.itis_service.itis.usgs.org/xsd' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %acceptedName_of :ATTR(:get<acceptedName>);
my %acceptedTsn_of :ATTR(:get<acceptedTsn>);

__PACKAGE__->_factory(
    [ qw(        acceptedName
        acceptedTsn

    ) ],
    {
        'acceptedName' => \%acceptedName_of,
        'acceptedTsn' => \%acceptedTsn_of,
    },
    {
        'acceptedName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'acceptedTsn' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
    },
    {

        'acceptedName' => 'acceptedName',
        'acceptedTsn' => 'acceptedTsn',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

MyTypes::SvcAcceptedName

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
SvcAcceptedName from the namespace http://data.itis_service.itis.usgs.org/xsd.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * acceptedName


=item * acceptedTsn




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # MyTypes::SvcAcceptedName
   acceptedName =>  $some_value, # string
   acceptedTsn =>  $some_value, # string
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

