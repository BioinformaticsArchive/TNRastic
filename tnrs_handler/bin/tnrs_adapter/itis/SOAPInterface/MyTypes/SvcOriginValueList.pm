package MyTypes::SvcOriginValueList;
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

my %originValues_of :ATTR(:get<originValues>);

__PACKAGE__->_factory(
    [ qw(        originValues

    ) ],
    {
        'originValues' => \%originValues_of,
    },
    {
        'originValues' => 'MyTypes::SvcOriginValue',
    },
    {

        'originValues' => 'originValues',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

MyTypes::SvcOriginValueList

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
SvcOriginValueList from the namespace http://metadata.itis_service.itis.usgs.org/xsd.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * originValues




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # MyTypes::SvcOriginValueList
   originValues =>  { # MyTypes::SvcOriginValue
     jurisdiction =>  $some_value, # string
     origin =>  $some_value, # string
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

