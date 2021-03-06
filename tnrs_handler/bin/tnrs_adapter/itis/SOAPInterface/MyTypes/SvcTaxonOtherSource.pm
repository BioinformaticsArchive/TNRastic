package MyTypes::SvcTaxonOtherSource;
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

my %acquisitionDate_of :ATTR(:get<acquisitionDate>);
my %referenceFor_of :ATTR(:get<referenceFor>);
my %source_of :ATTR(:get<source>);
my %sourceComment_of :ATTR(:get<sourceComment>);
my %sourceType_of :ATTR(:get<sourceType>);
my %updateDate_of :ATTR(:get<updateDate>);
my %version_of :ATTR(:get<version>);

__PACKAGE__->_factory(
    [ qw(        acquisitionDate
        referenceFor
        source
        sourceComment
        sourceType
        updateDate
        version

    ) ],
    {
        'acquisitionDate' => \%acquisitionDate_of,
        'referenceFor' => \%referenceFor_of,
        'source' => \%source_of,
        'sourceComment' => \%sourceComment_of,
        'sourceType' => \%sourceType_of,
        'updateDate' => \%updateDate_of,
        'version' => \%version_of,
    },
    {
        'acquisitionDate' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'referenceFor' => 'MyTypes::SvcReferenceForElement',
        'source' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'sourceComment' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'sourceType' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'updateDate' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'version' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
    },
    {

        'acquisitionDate' => 'acquisitionDate',
        'referenceFor' => 'referenceFor',
        'source' => 'source',
        'sourceComment' => 'sourceComment',
        'sourceType' => 'sourceType',
        'updateDate' => 'updateDate',
        'version' => 'version',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

MyTypes::SvcTaxonOtherSource

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
SvcTaxonOtherSource from the namespace http://data.itis_service.itis.usgs.org/xsd.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * acquisitionDate


=item * referenceFor


=item * source


=item * sourceComment


=item * sourceType


=item * updateDate


=item * version




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # MyTypes::SvcTaxonOtherSource
   acquisitionDate =>  $some_value, # string
   referenceFor =>  { # MyTypes::SvcReferenceForElement
     name =>  $some_value, # string
     refLanguage =>  $some_value, # string
     referredTsn =>  $some_value, # string
   },
   source =>  $some_value, # string
   sourceComment =>  $some_value, # string
   sourceType =>  $some_value, # string
   updateDate =>  $some_value, # string
   version =>  $some_value, # string
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

