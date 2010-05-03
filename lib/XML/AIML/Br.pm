package XML::AIML::Br;
use Moose;
use namespace::autoclean;
use XML::Toolkit;

has 'text' => (
    isa         => 'Str',
    is          => 'rw',
    traits      => ['XML'],
    description => {
        node_type  => "character",
        sort_order => 0,
    },
);

package XML::AIML::BR;
use Moose;
extends qw(XML::AIML::Br);
1;
__END__
