#!/usr/bin/perl -w
use strict;
use Test::More;

use XML::AIML;

my $xml = q[<?xml version="1.0" encoding="UTF-8"?>
<aiml version="1.0">
 
<category>
<pattern>HELLO</pattern>
<template>Hi there!</template>
</category>
 
</aiml>
];

ok( my $root = XML::AIML->parse_xml($xml), 'parsed xml' );
my $category = $root->categories->[0];
is( $category->pattern,  'HELLO',     'pattern is HELLO' );
is( $category->template, 'Hi there!', 'template is "Hi there!"' );

done_testing;
