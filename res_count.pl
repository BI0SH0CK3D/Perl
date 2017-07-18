use strict;
use warnings;

sub res_count
{

	my ($target, $sequence) = @_;
	my $count = 0;

	while ( $sequence =~ /$target/g )
	{
		$count++;
	}

	return $count;
}

my $dna = "GATTACA";

print res_count("A", $dna), "\n";
print res_count("G", $dna), "\n";

my $t_count = res_count("T", $dna);

print $t_count;