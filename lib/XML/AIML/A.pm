package XML::AIML::A;
use Moose;
use namespace::autoclean;
use XML::Toolkit;

has 'href' => (
    isa         => 'Str',
    is          => 'ro',
    traits      => ['XML'],
    description => {
        Prefix       => "",
        LocalName    => "href",
        node_type    => "attribute",
        Name         => "href",
        NamespaceURI => "",
        sort_order   => 0,
    },
);
has 'target' => (
    isa         => 'Str',
    is          => 'ro',
    traits      => ['XML'],
    description => {
        Prefix       => "",
        LocalName    => "target",
        node_type    => "attribute",
        Name         => "target",
        NamespaceURI => "",
        sort_order   => 1,
    },
);
has 'text' => (
    isa         => 'Str',
    is          => 'rw',
    traits      => ['XML'],
    description => {
        node_type  => "character",
        sort_order => 2,
    },
);
1;

__END__
