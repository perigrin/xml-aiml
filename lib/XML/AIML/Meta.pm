package XML::AIML::Meta;
use Moose;
use namespace::autoclean;
use XML::Toolkit;

has 'content' => (
     isa         => 'Str',
     is          => 'ro',   
     traits      => [ 'XML'],
     description => {
        Prefix => "",
        LocalName => "content",
        node_type => "attribute",
        Name => "content",
        NamespaceURI => "",
        sort_order => 0,
     },
);
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
        sort_order => 1,
     },
);
1;

__END__
