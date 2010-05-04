package XML::AIML::Aiml;
use Moose;
use namespace::autoclean;
use XML::Toolkit;
use XML::AIML;
use MooseX::Aliases;

has version => (
    isa         => 'Str',
    is          => 'rw',
    traits      => [qw(XML)],
    lazy        => 1,
    default     => '1.0',
    description => {
        Prefix       => "",
        LocalName    => "version",
        node_type    => "attribute",
        Name         => "version",
        NamespaceURI => "",
        sort_order   => 0,
    },
);

has 'category_collection' => (
    isa         => 'ArrayRef[XML::AIML::Category]',
    is          => 'ro',
    init_arg    => 'categorys',
    alias       => 'categories',
    traits      => [qw(XML Array)],
    lazy        => 1,
    auto_deref  => 1,
    default     => sub { [] },
    handles     => { add_category => ['push'] },
    description => {
        Prefix       => "",
        LocalName    => "category",
        node_type    => "child",
        Name         => "category",
        NamespaceURI => "",
        sort_order   => 0,
    },
);

sub to_xml { XML::AIML->render_xml(shift) }
1;
__END__
