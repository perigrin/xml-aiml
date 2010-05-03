package XML::AIML::Eval;
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
has 'uppercase_collection' => (
     isa         => 'ArrayRef[XML::AIML::Uppercase]',
     is          => 'ro',     init_arg    => 'uppercases',
     traits      => [qw(XML Array)],
     lazy        => 1,
     auto_deref  => 1,
     default     => sub { [] },
     handles    => { add_uppercase => ['push'] },     description => {
        Prefix => "",
        LocalName => "uppercase",
        node_type => "child",
        Name => "uppercase",
        NamespaceURI => "",
        sort_order => 1,
     },
);
1;

__END__
