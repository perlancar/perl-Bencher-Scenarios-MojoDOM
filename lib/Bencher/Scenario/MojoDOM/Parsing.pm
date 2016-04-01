package Bencher::Scenario::MojoDOM::Parsing;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use Bencher::ScenarioUtil::MojoDOM;
use PERLANCAR::HTML::Tree::Examples qw(gen_sample_html);

our $scenario = {
    summary => 'Benchmark parsing of HTML',
    description => <<'_',

Sample documents from `PERLANCAR::HTML::Tree::Examples` are used.

_
    before_bench => sub {
        # prepare html
        %main::htmls = map {
            ($_->{name} => gen_sample_html(size => $_->{name}))
        } @Bencher::ScenarioUtil::MojoDOM::datasets;
    },
    participants => [
        {
            fcall_template => 'Mojo::DOM->new($main::htmls{<size>})',
        },
    ],
    datasets => \@Bencher::ScenarioUtil::MojoDOM::datasets,
    include_result_size => 1,
    extra_modules => \@Bencher::ScenarioUtil::MojoDOM::extra_modules,
};

1;
# ABSTRACT:
