package XML::AIML::B;
use Moose;
use namespace::autoclean;
use XML::Toolkit;

has 'em_collection' => (
     isa         => 'ArrayRef[XML::AIML::Em]',
     is          => 'ro',     init_arg    => 'ems',
     traits      => [qw(XML Array)],
     lazy        => 1,
     auto_deref  => 1,
     default     => sub { [] },
     handles    => { add_em => ['push'] },     description => {
        Prefix => "",
        LocalName => "em",
        node_type => "child",
        Name => "em",
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
1;

__END__
