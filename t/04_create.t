#!/usr/bin/perl -w
use strict;
use Test::More;
use Test::XML;

use aliased 'XML::AIML::Aiml';
use aliased 'XML::AIML::Category';
use aliased 'XML::AIML::Pattern';
use aliased 'XML::AIML::Template';
use aliased 'XML::Toolkit::Generator';
ok(
    my $root = Aiml->new(
        categories => [
            Category->new(
                pattern  => Pattern->new( text  => 'HELLO' ),
                template => Template->new( text => 'Hi there!' ),
            ),
        ]
    )
);

ok( my $generator = Generator->new(), 'Build XML::Toolkit::Generator' );
$generator->render_object($root);
my $xml = q[<?xml version="1.0" encoding="UTF-8"?>
<aiml version="1.0">
 
<category>
<pattern>HELLO</pattern>
<template>Hi there!</template>
</category>
 
</aiml>
];
is_xml( $xml, join( '', $generator->output ), 'XML compares' );

done_testing;
