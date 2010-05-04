package XML::AIML::Category;
use Moose;
use namespace::autoclean;
use XML::Toolkit;
use MooseX::Aliases;
has 'pattern' => (
    isa         => 'XML::AIML::Pattern',
    reader      => '_pattern',
    init_arg    => 'pattern',
    writer      => 'add_pattern',
    alias       => 'patterns',
    traits      => [qw(XML)],
    lazy        => 1,
    default     => sub { confess 'required' },
    handles     => { pattern => 'text' },
    description => {
        Prefix       => "",
        LocalName    => "pattern",
        node_type    => "child",
        Name         => "pattern",
        NamespaceURI => "",
        sort_order   => 0,
    },
);
has 'template' => (
    isa         => 'XML::AIML::Template',
    init_arg    => 'template',
    reader      => '_template',
    writer      => 'add_template',
    alias       => ['templates'],
    traits      => [qw(XML)],
    lazy        => 1,
    default     => sub { confess 'required' },
    handles     => { template => 'text' },
    description => {
        Prefix       => "",
        LocalName    => "template",
        node_type    => "child",
        Name         => "template",
        NamespaceURI => "",
        sort_order   => 1,
    },
);
1;

__END__
