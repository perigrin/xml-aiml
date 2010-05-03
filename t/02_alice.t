#!/usr/bin/perl -w
use strict;
use FindBin qw($Bin);
use Path::Class qw(dir);
use Try::Tiny;
use Test::More;
use Test::XML;

use aliased 'XML::Toolkit::Loader';
use aliased 'XML::Toolkit::Generator';
use XML::AIML;

FILE: for my $file ( dir("$Bin/../data/aiml/alice")->children ) {
    my $xml = $file->slurp;
    my $loader = Loader->new( namespace => 'XML::AIML' );
    try {
        $loader->parse_string($xml);
        ok( my $root = $loader->root_object, $file->resolve );
    }
    catch {
        fail "Failed to parse " . $file->resolve;
        diag $_;
        exit;
    }

    #    ok( my $generator = Generator->new(), 'Build XML::Toolkit::Loader' );
    #    $generator->render_object($root);
    #    is_xml( $xml, join( '', $generator->output ), 'XML compares' );
}
done_testing;
