use strict;
use warnings;

package B::Hooks::OP::Check::Dump;

use parent qw/DynaLoader/;
use B::Hooks::OP::Check;

our $VERSION = '0.01';

__PACKAGE__->bootstrap($VERSION);

1;
