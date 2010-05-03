package XML::AIML::Img;
use Moose;
use namespace::autoclean;
use XML::Toolkit;

has 'src' => (
     isa         => 'Str',
     is          => 'ro',   
     traits      => [ 'XML'],
     description => {
        Prefix => "",
        LocalName => "src",
        node_type => "attribute",
        Name => "src",
        NamespaceURI => "",
        sort_order => 0,
     },
);
1;

__END__
