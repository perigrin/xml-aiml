package XML::AIML::Think;
use Moose;
use namespace::autoclean;
use XML::Toolkit;

has 'set_collection' => (
    isa         => 'ArrayRef[XML::AIML::Set]',
    is          => 'ro',
    init_arg    => 'sets',
    traits      => [qw(XML Array)],
    lazy        => 1,
    auto_deref  => 1,
    default     => sub { [] },
    handles     => { add_set => ['push'] },
    description => {
        Prefix       => "",
        LocalName    => "set",
        node_type    => "child",
        Name         => "set",
        NamespaceURI => "",
        sort_order   => 0,
    },
);
1;

__END__
