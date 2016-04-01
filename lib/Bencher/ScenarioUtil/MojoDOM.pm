package Bencher::ScenarioUtil::MojoDOM;

# DATE
# VERSION

our @datasets = (
    {name => 'small1' , summary => '16 elements, 4 levels, '.length($htmls{small1}).' bytes' , args=>{size=>'small1' }},
    {name => 'medium1', summary => '20k elements, 7 levels, '.length($htmls{medium1}).' bytes', args=>{size=>'medium1'}},
);

# we want to record the version of these modules too in the benchmark result
# metadata
our @extra_modules = (
    'PERLANCAR::HTML::Tree::Examples',
);

1;
# ABSTRACT: Utility routines
