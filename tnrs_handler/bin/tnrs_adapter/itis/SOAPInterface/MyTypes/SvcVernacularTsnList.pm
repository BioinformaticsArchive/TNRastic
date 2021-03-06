package MyTypes::SvcVernacularTsnList;
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

my %language_of :ATTR(:get<language>);
my %vernacularTsns_of :ATTR(:get<vernacularTsns>);

__PACKAGE__->_factory(
    [ qw(        language
        vernacularTsns

    ) ],
    {
        'language' => \%language_of,
        'vernacularTsns' => \%vernacularTsns_of,
    },
    {
        'language' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'vernacularTsns' => 'MyTypes::SvcCommonName',
    },
    {

        'language' => 'language',
        'vernacularTsns' => 'vernacularTsns',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

MyTypes::SvcVernacularTsnList

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
SvcVernacularTsnList from the namespace http://metadata.itis_service.itis.usgs.org/xsd.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * language


=item * vernacularTsns




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # MyTypes::SvcVernacularTsnList
   language =>  $some_value, # string
   vernacularTsns =>  { # MyTypes::SvcCommonName
     commonName =>  $some_value, # string
     language =>  $some_value, # string
     tsn =>  $some_value, # string
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

