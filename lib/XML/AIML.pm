package XML::AIML;
use strict;
our $VERISON = '0.01';
use namespace::autoclean;

use aliased 'XML::Toolkit::Loader';

sub parse_xml {
    my ( $class, $xml ) = @_;
    my $loader = Loader->new( namespace => $class );
    $loader->parse_string($xml);
    return $loader->root_object;
}

1;
__END__
