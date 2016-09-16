package Bencher::Scenario::ArraySet::Startup;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark startup of Array::Set',
    module_startup => 1,
    modules => {
    },
    participants => [
        {module=>'Array::Set'},
        {module=>'Set::Object'},
        {module=>'Set::Scalar'},
    ],
};

1;
# ABSTRACT:

=head1 SEE ALSO
