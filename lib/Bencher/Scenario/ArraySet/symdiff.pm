package Bencher::Scenario::ArraySet::symdiff;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark symmetric difference operation',
    participants => [
        {
            fcall_template => 'Array::Set::set_symdiff(<set1>, <set2>)',
        },
        {
            module => 'Set::Object',
            function => 'symmetric_difference',
            code_template => 'my $set1 = Set::Object->new; $set1->insert(@{<set1>}); my $set2 = Set::Object->new; $set2->insert(@{<set2>}); my $res = $set1->symmetric_difference($set2);', # $res->as_string
        },
    ],
    datasets => [
        { name => '1_1'  , args => { set1=>[1], set2=>[1] } },

        { name => '10_1' , args => { set1=>[1..10], set2=>[1] } },
        { name => '10_5' , args => { set1=>[1..10], set2=>[3..7] } },
        { name => '10_10', args => { set1=>[1..10], set2=>[1..10] } },

        { name => '100_1'  , args => { set1=>[1..100], set2=>[1] } },
        { name => '100_10' , args => { set1=>[1..100], set2=>[96..105] } },
        { name => '100_100', args => { set1=>[1..100], set2=>[1..100] } },

        { name => '1000_1'   , args => { set1=>[1..1000], set2=>[1] } },
        { name => '1000_10'  , args => { set1=>[1..1000], set2=>[996..1005] } },
        { name => '1000_100' , args => { set1=>[1..1000], set2=>[951..1050] } },
        { name => '1000_1000', args => { set1=>[1..1000], set2=>[1..1000] } },
    ],
};

1;
# ABSTRACT:

=head1 SEE ALSO
