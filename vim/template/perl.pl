#!/usr/bin/env perl
#
# vim: ft=perl ts=8 sw=8 sts=8 noexpandtab

use strict;
use warnings;

use Data::Dumper
$Data::Dumper::Sortkeys	= 1;
$Data::Dumper::Terse	= 1;

use Pod::Usage;
use Getopt::Long qw(
	:config
	require_order
	bundling
	no_ignore_case
);

my %opts;
GetOptions(\%opts,
	'help|h' => sub { pod2usage(0) },
);


exit(0);

__END__

=head1 NAME



=head1 SYNOPSIS



=head1 DESCRIPTION



=head1 OPTIONS

=head3 -h, --help

Display the short help. Additional documentation is available using C<perldoc>.

=head1 SEE ALSO



=cut
