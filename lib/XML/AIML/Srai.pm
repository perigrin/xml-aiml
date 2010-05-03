package XML::AIML::Srai;
use Moose;
use namespace::autoclean;
use XML::Toolkit;

has 'get_collection' => (
     isa         => 'ArrayRef[XML::AIML::Get]',
     is          => 'ro',     init_arg    => 'gets',
     traits      => [qw(XML Array)],
     lazy        => 1,
     auto_deref  => 1,
     default     => sub { [] },
     handles    => { add_get => ['push'] },     description => {
        Prefix => "",
        LocalName => "get",
        node_type => "child",
        Name => "get",
        NamespaceURI => "",
        sort_order => 0,
     },
);
has 'star_collection' => (
     isa         => 'ArrayRef[XML::AIML::Star]',
     is          => 'ro',     init_arg    => 'stars',
     traits      => [qw(XML Array)],
     lazy        => 1,
     auto_deref  => 1,
     default     => sub { [] },
     handles    => { add_star => ['push'] },     description => {
        Prefix => "",
        LocalName => "star",
        node_type => "child",
        Name => "star",
        NamespaceURI => "",
        sort_order => 1,
     },
);
has 'text' => (
     isa         => 'Str',
     is          => 'rw',   
     traits      => [ 'XML'],
     description => {
        node_type => "character",
        sort_order => 2,
     },
);
1;

__END__
