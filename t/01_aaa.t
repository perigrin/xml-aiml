#!/usr/bin/perl -w
use strict;
use FindBin qw($Bin);
use Path::Class qw(dir);
use Try::Tiny;
use Test::More;
use Test::XML;

use XML::AIML;

FILE: for my $file ( dir("$Bin/../data/aiml/aaa")->children ) {
    my $xml = $file->slurp;
    try { ok( my $root = XML::AIML->parse_xml($xml), $file->resolve ) }
    catch { fail "Failed to parse " . $file->resolve };
}
done_testing;
