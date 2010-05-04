#!/usr/bin/perl -w
use strict;
use Test::More;
use Test::XML;

use XML::AIML;
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
    ),
    'built AIML'
);

is_xml(
    $root->to_xml,
    q[<?xml version="1.0" encoding="UTF-8"?>
<aiml version="1.0">
 
<category>
<pattern>HELLO</pattern>
<template>Hi there!</template>
</category>
 
</aiml>
], 'rendered correctly'
);
done_testing;
