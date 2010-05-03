package XML::AIML::Date;
use Moose;
use namespace::autoclean;
use XML::Toolkit;

has 'format' => (
     isa         => 'Str',
     is          => 'ro',   
     traits      => [ 'XML'],
     description => {
        Prefix => "",
        LocalName => "format",
        node_type => "attribute",
        Name => "format",
        NamespaceURI => "",
        sort_order => 0,
     },
);
1;

__END__
