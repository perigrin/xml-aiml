package XML::AIML::Aiml;
use Moose;
use namespace::autoclean;
use XML::Toolkit;

has 'category_collection' => (
     isa         => 'ArrayRef[XML::AIML::Category]',
     is          => 'ro',     init_arg    => 'categorys',
     traits      => [qw(XML Array)],
     lazy        => 1,
     auto_deref  => 1,
     default     => sub { [] },
     handles    => { add_category => ['push'] },     description => {
        Prefix => "",
        LocalName => "category",
        node_type => "child",
        Name => "category",
        NamespaceURI => "",
        sort_order => 0,
     },
);
1;

__END__
