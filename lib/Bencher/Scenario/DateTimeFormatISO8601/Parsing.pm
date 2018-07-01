package Bencher::Scenario::DateTimeFormatISO8601::Parsing;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark parsing with DateTime::Format::ISO8601',
    participants => [
        {
            name => 'parse_datetime',
            module => 'DateTime::Format::ISO8601',
            code_template => 'DateTime::Format::ISO8601->parse_datetime(<str>)',
            tags => ['parse_datetime'],
        },
        {
            name => 'parse_time',
            module => 'DateTime::Format::ISO8601',
            code_template => 'DateTime::Format::ISO8601->parse_time(<str>)',
            tags => ['parse_time'],
        },
    ],
    datasets => [
        {include_participant_tags => ['parse_datetime'], args => {'str@' => ['2000-12-31', '2000-12-31T12:34:56', '2000-12-31T12:34:56Z', '2000-12-31T12:34:56+07:00']}},
        #{include_participant_tags => ['parse_time'    ], args => {'str@' => [
            #'12:34:56',
            #'12:34:56Z',
            #'12:34:56+07:00',
        #]}},
    ],
};

1;
# ABSTRACT:
