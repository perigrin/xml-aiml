package XML::AIML::Li;
use Moose;
use namespace::autoclean;
use XML::Toolkit;

has 'bot_collection' => (
     isa         => 'ArrayRef[XML::AIML::Bot]',
     is          => 'ro',     init_arg    => 'bots',
     traits      => [qw(XML Array)],
     lazy        => 1,
     auto_deref  => 1,
     default     => sub { [] },
     handles    => { add_bot => ['push'] },     description => {
        Prefix => "",
        LocalName => "bot",
        node_type => "child",
        Name => "bot",
        NamespaceURI => "",
        sort_order => 0,
     },
);
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
        sort_order => 1,
     },
);
has 'person_collection' => (
     isa         => 'ArrayRef[XML::AIML::Person]',
     is          => 'ro',     init_arg    => 'persons',
     traits      => [qw(XML Array)],
     lazy        => 1,
     auto_deref  => 1,
     default     => sub { [] },
     handles    => { add_person => ['push'] },     description => {
        Prefix => "",
        LocalName => "person",
        node_type => "child",
        Name => "person",
        NamespaceURI => "",
        sort_order => 2,
     },
);
has 'set_collection' => (
     isa         => 'ArrayRef[XML::AIML::Set]',
     is          => 'ro',     init_arg    => 'sets',
     traits      => [qw(XML Array)],
     lazy        => 1,
     auto_deref  => 1,
     default     => sub { [] },
     handles    => { add_set => ['push'] },     description => {
        Prefix => "",
        LocalName => "set",
        node_type => "child",
        Name => "set",
        NamespaceURI => "",
        sort_order => 3,
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
        sort_order => 4,
     },
);
has 'text' => (
     isa         => 'Str',
     is          => 'rw',   
     traits      => [ 'XML'],
     description => {
        node_type => "character",
        sort_order => 5,
     },
);
1;

__END__
