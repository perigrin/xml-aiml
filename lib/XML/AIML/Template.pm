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
has 'getjob_collection' => (
     isa         => 'ArrayRef[XML::AIML::Getjob]',
     is          => 'ro',     init_arg    => 'getjobs',
     traits      => [qw(XML Array)],
     lazy        => 1,
     auto_deref  => 1,
     default     => sub { [] },
     handles    => { add_getjob => ['push'] },     description => {
        Prefix => "",
        LocalName => "getjob",
        node_type => "child",
        Name => "getjob",
        NamespaceURI => "",
        sort_order => 2,
     },
);
has 'id_collection' => (
     isa         => 'ArrayRef[XML::AIML::Id]',
     is          => 'ro',     init_arg    => 'ids',
     traits      => [qw(XML Array)],
     lazy        => 1,
     auto_deref  => 1,
     default     => sub { [] },
     handles    => { add_id => ['push'] },     description => {
        Prefix => "",
        LocalName => "id",
        node_type => "child",
        Name => "id",
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
has 'sr_collection' => (
     isa         => 'ArrayRef[XML::AIML::Sr]',
     is          => 'ro',     init_arg    => 'srs',
     traits      => [qw(XML Array)],
     lazy        => 1,
     auto_deref  => 1,
     default     => sub { [] },
     handles    => { add_sr => ['push'] },     description => {
        Prefix => "",
        LocalName => "sr",
        node_type => "child",
        Name => "sr",
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
has 'text' => (
     isa         => 'Str',
     is          => 'rw',   
     traits      => [ 'XML'],
     description => {
        node_type => "character",
        sort_order => 7,
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
        sort_order => 8,
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
        sort_order => 9,
     },
);
1;

__END__
