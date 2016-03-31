package Bencher::ScenarioUtil::MojoDOM;

# DATE
# VERSION

use PERLANCAR::HTML::Tree::Examples qw(gen_sample_html);

our %htmls = (
    small1  => gen_sample_html(size => 'small1'),
    medium1 => gen_sample_html(size => 'medium1'),
);

our @datasets = (
    {name => 'small1' , summary => '16 elements, 4 levels, '.length($htmls{small1}).' bytes' , args=>{size=>'small1' }},
    {name => 'medium1', summary => '20k elements, 7 levels, '.length($htmls{medium1}).' bytes', args=>{size=>'medium1'}},
);

1;
# ABSTRACT: Utility routines
