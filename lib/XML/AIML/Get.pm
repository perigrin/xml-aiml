package XML::AIML::Get;
use Moose;
use namespace::autoclean;
use XML::Toolkit;

has 'name' => (
     isa         => 'Str',
     is          => 'ro',   
     traits      => [ 'XML'],
     description => {
        Prefix => "",
        LocalName => "name",
        node_type => "attribute",
        Name => "name",
        NamespaceURI => "",
        sort_order => 0,
     },
);
has 'text' => (
     isa         => 'Str',
     is          => 'rw',   
     traits      => [ 'XML'],
     description => {
        node_type => "character",
        sort_order => 1,
     },
);
1;

__END__
