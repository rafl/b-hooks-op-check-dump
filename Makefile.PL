use strict;
use warnings;
use inc::Module::Install;
use ExtUtils::Depends;

name 'B-Hooks-OP-Check-Dump';
all_from 'lib/B/Hooks/OP/Check/Dump.pm';

requires 'parent';
requires 'B::Hooks::OP::Check' => '0.11';

build_requires 'B::Hooks::OP::Check' => '0.11';

configure_requires 'ExtUtils::Depends';
configure_requires 'B::Hooks::OP::Check' => '0.11';

my $pkg = ExtUtils::Depends->new('B::Hooks::OP::Check::Dump', 'B::Hooks::OP::Check');
$pkg->add_xs('Dump.xs');
$pkg->add_pm('lib/B/Hooks/OP/Check/Dump.pm' => '$(INST_LIB)/B/Hooks/OP/Check/Dump.pm');

makemaker_args($pkg->get_makefile_vars);

WriteAll;
