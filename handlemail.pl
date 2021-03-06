#!/usr/bin/perl --
# -*- Mode: perl; indent-tabs-mode: nil -*-
#
# The contents of this file are subject to the Netscape Public
# License Version 1.1 (the "License"); you may not use this file
# except in compliance with the License. You may obtain a copy of
# the License at http://www.mozilla.org/NPL/
#
# Software distributed under the License is distributed on an "AS
# IS" basis, WITHOUT WARRANTY OF ANY KIND, either express or
# implied. See the License for the specific language governing
# rights and limitations under the License.
#
# The Original Code is the Tinderbox build tool.
#
# The Initial Developer of the Original Code is Netscape Communications
# Corporation. Portions created by Netscape are
# Copyright (C) 1998 Netscape Communications Corporation. All
# Rights Reserved.
#
# Contributor(s): 

use strict;
use lib "/var/www/iscsi/webtools/tinderbox";
require 'tbglobals.pl';

$ENV{'PATH'} = "/usr/bin:/bin";
my $tinderboxdir = "/var/www/iscsi/webtools/tinderbox";

chdir $tinderboxdir or die "Couldn't chdir to $tinderboxdir"; 

my $time = time();
open(OUT, ">$::data_dir/tbx.$time.$$") or die ("Could not open data file, tbx.$time.$$\n");
while (<STDIN>) {
    print OUT $_;
}
close(OUT);

exit(0);
