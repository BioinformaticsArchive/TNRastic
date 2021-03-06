package MyTypes::SvcScientificNameList;
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

my %scientificNames_of :ATTR(:get<scientificNames>);

__PACKAGE__->_factory(
    [ qw(        scientificNames

    ) ],
    {
        'scientificNames' => \%scientificNames_of,
    },
    {
        'scientificNames' => 'MyTypes::SvcScientificName',
    },
    {

        'scientificNames' => 'scientificNames',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

MyTypes::SvcScientificNameList

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
SvcScientificNameList from the namespace http://data.itis_service.itis.usgs.org/xsd.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * scientificNames




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # MyTypes::SvcScientificNameList
   scientificNames =>  { # MyTypes::SvcScientificName
     combinedName =>  $some_value, # string
     unitInd1 =>  $some_value, # string
     unitInd2 =>  $some_value, # string
     unitInd3 =>  $some_value, # string
     unitInd4 =>  $some_value, # string
     unitName1 =>  $some_value, # string
     unitName2 =>  $some_value, # string
     unitName3 =>  $some_value, # string
     unitName4 =>  $some_value, # string
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

