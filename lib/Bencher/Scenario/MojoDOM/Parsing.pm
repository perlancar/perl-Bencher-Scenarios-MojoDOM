package Bencher::Scenario::MojoDOM::Parsing;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use Bencher::ScenarioUtil::MojoDOM;

our $scenario = {
    summary => 'Benchmark parsing of HTML',
    description => <<'_',

Sample documents from `PERLANCAR::HTML::Tree::Examples` are used.

_
    participants => [
        {
            fcall_template => 'Mojo::DOM->new($Bencher::ScenarioUtil::MojoDOM::htmls{<size>})',
        },
    ],
    datasets => \@Bencher::ScenarioUtil::MojoDOM::datasets,
    include_result_size => 1,
    extra_modules => \@Bencher::ScenarioUtil::MojoDOM::extra_modules,
};

1;
# ABSTRACT:
