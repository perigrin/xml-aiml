package XML::AIML::EM;
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
1;

package XML::AIML::Em;
use Moose;
extends qw(XML::AIML::EM);

__END__
