package Bencher::Scenario::MojoDOM::Selection;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use Bencher::ScenarioUtil::MojoDOM;
use Mojo::DOM;
use PERLANCAR::HTML::Tree::Examples qw(gen_sample_html);

my @exprs = (
    'h4',
    'h4:first-child',
);

my @datasets = do {
    my @res = @Bencher::ScenarioUtil::MojoDOM::datasets;
    for (@res) {
        $_->{args}{'expr@'} = \@exprs;
    }
    @res;
};

our $scenario = {
    summary => 'Benchmark selector',
    description => <<'_',

Sample documents from `PERLANCAR::HTML::Tree::Examples` are used.

_
    before_bench => sub {
        # prepare the DOMs
        %main::doms = map {
            ($_->{name} => Mojo::DOM->new(
                gen_sample_html(size => $_->{name})))
        } @Bencher::ScenarioUtil::MojoDOM::datasets;
    },
    participants => [
        {
            name => 'find',
            code_template => '$main::doms{<size>}->find(<expr>)->size',
        },
    ],
    datasets => \@datasets,
    extra_modules => \@Bencher::ScenarioUtil::MojoDOM::extra_modules,
};

1;
# ABSTRACT:
