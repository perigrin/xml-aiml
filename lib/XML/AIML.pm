package XML::AIML;
use strict;
our $VERISON = '0.01';
use namespace::autoclean;

use aliased 'XML::Toolkit::Loader';
use aliased 'XML::Toolkit::Generator';

sub parse_xml {
    my ( $class, $xml ) = @_;
    my $loader = Loader->new( namespace => $class );
    $loader->parse_string($xml);
    return $loader->root_object;
}

sub render_output {
    my ( $class, $root ) = @_;
    my $generator = Generator->new();
    $generator->render_object($root);
    return $generator->output;
}

sub render_xml {
    my ( $class, $root ) = @_;
    return join '', $class->render_output($root);
}

1;
__END__
