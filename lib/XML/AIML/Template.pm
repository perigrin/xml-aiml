package XML::AIML::Template;
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
has 'BR_collection' => (
     isa         => 'ArrayRef[XML::AIML::BR]',
     is          => 'ro',     init_arg    => 'BRs',
     traits      => [qw(XML Array)],
     lazy        => 1,
     auto_deref  => 1,
     default     => sub { [] },
     handles    => { add_BR => ['push'] },     description => {
        Prefix => "",
        LocalName => "BR",
        node_type => "child",
        Name => "BR",
        NamespaceURI => "",
        sort_order => 1,
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
        sort_order => 2,
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
        sort_order => 3,
     },
);
has 'random_collection' => (
     isa         => 'ArrayRef[XML::AIML::Random]',
     is          => 'ro',     init_arg    => 'randoms',
     traits      => [qw(XML Array)],
     lazy        => 1,
     auto_deref  => 1,
     default     => sub { [] },
     handles    => { add_random => ['push'] },     description => {
        Prefix => "",
        LocalName => "random",
        node_type => "child",
        Name => "random",
        NamespaceURI => "",
        sort_order => 4,
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
        sort_order => 5,
     },
);
has 'srai_collection' => (
     isa         => 'ArrayRef[XML::AIML::Srai]',
     is          => 'ro',     init_arg    => 'srais',
     traits      => [qw(XML Array)],
     lazy        => 1,
     auto_deref  => 1,
     default     => sub { [] },
     handles    => { add_srai => ['push'] },     description => {
        Prefix => "",
        LocalName => "srai",
        node_type => "child",
        Name => "srai",
        NamespaceURI => "",
        sort_order => 6,
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
        sort_order => 7,
     },
);
has 'text' => (
     isa         => 'Str',
     is          => 'rw',   
     traits      => [ 'XML'],
     description => {
        node_type => "character",
        sort_order => 8,
     },
);
has 'that_collection' => (
     isa         => 'ArrayRef[XML::AIML::That]',
     is          => 'ro',     init_arg    => 'thats',
     traits      => [qw(XML Array)],
     lazy        => 1,
     auto_deref  => 1,
     default     => sub { [] },
     handles    => { add_that => ['push'] },     description => {
        Prefix => "",
        LocalName => "that",
        node_type => "child",
        Name => "that",
        NamespaceURI => "",
        sort_order => 9,
     },
);
has 'thatstar_collection' => (
     isa         => 'ArrayRef[XML::AIML::Thatstar]',
     is          => 'ro',     init_arg    => 'thatstars',
     traits      => [qw(XML Array)],
     lazy        => 1,
     auto_deref  => 1,
     default     => sub { [] },
     handles    => { add_thatstar => ['push'] },     description => {
        Prefix => "",
        LocalName => "thatstar",
        node_type => "child",
        Name => "thatstar",
        NamespaceURI => "",
        sort_order => 10,
     },
);
has 'think_collection' => (
     isa         => 'ArrayRef[XML::AIML::Think]',
     is          => 'ro',     init_arg    => 'thinks',
     traits      => [qw(XML Array)],
     lazy        => 1,
     auto_deref  => 1,
     default     => sub { [] },
     handles    => { add_think => ['push'] },     description => {
        Prefix => "",
        LocalName => "think",
        node_type => "child",
        Name => "think",
        NamespaceURI => "",
        sort_order => 11,
     },
);
1;

__END__
