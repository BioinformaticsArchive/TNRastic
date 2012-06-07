package MyTypes::SvcJurisdictionValueList;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://metadata.itis_service.itis.usgs.org/xsd' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}


use base qw(MyTypes::SvcMetadataListBase);
# Variety: sequence
use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %jurisdictionValues_of :ATTR(:get<jurisdictionValues>);

__PACKAGE__->_factory(
    [ qw(        jurisdictionValues

    ) ],
    {
        'jurisdictionValues' => \%jurisdictionValues_of,
    },
    {
        'jurisdictionValues' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
    },
    {

        'jurisdictionValues' => 'jurisdictionValues',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

MyTypes::SvcJurisdictionValueList

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
SvcJurisdictionValueList from the namespace http://metadata.itis_service.itis.usgs.org/xsd.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * jurisdictionValues




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # MyTypes::SvcJurisdictionValueList
   jurisdictionValues =>  $some_value, # string
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

