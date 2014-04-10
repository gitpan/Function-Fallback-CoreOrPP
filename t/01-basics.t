#!perl

use 5.010;
use strict;
use warnings;

use Function::Fallback::CoreOrPP qw(clone uniq);
use Test::More 0.98;

subtest "uniq" => sub {
    local $Function::Fallback::CoreOrPP::USE_NONCORE_XS_FIRST = 0;
    is_deeply([uniq(1, 3, 2, 1, 3, 4)], [1, 3, 2, 4]);
};

DONE_TESTING:
done_testing();
