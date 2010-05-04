package XML::AIML::Uppercase;
use Moose;
use namespace::autoclean;
use XML::Toolkit;

has 'get_collection' => (
    isa         => 'ArrayRef[XML::AIML::Get]',
    is          => 'ro',
    init_arg    => 'gets',
    traits      => [qw(XML Array)],
    lazy        => 1,
    auto_deref  => 1,
    default     => sub { [] },
    handles     => { add_get => ['push'] },
    description => {
        Prefix       => "",
        LocalName    => "get",
        node_type    => "child",
        Name         => "get",
        NamespaceURI => "",
        sort_order   => 0,
    },
);
1;

__END__
