package XML::AIML::That;
use Moose;
use namespace::autoclean;
use XML::Toolkit;

has 'index' => (
     isa         => 'Str',
     is          => 'ro',   
     traits      => [ 'XML'],
     description => {
        Prefix => "",
        LocalName => "index",
        node_type => "attribute",
        Name => "index",
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
