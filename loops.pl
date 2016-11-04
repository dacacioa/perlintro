use strict;
use warnings;

my @array = ("azul", "rojo","negro");
my $i = 0;

#while

while($i < @array) {
	print $i, ": ", $array[$i];
	$i++;
};

#until

$i = 0;
until($i >= scalar @array) {
	print $i, ": ", $array[$i];
	$i++;
}

#do

$i = 0;
do {
	print $i, ": ", $array[$i];
	$i++;
} while ($i < scalar @array);


$i = 0;
do {
	print $i, ": ", $array[$i];
	$i++;
} until ($i >= scalar @array);

#foreach

foreach my $string ( @array ) {
	print $string;
};

foreach my $i ( 0 .. $#array ) {
	print $i, ": ", $array[$i];
};

my %scientists = (
	"Newton"   => "Isaac",
	"Einstein" => "Albert",
	"Darwin"   => "Charles",
);

foreach my $key (keys %scientists) {
	print $key, ": ", $scientists{$key}."\n";
};


#If you don't provide an explicit iterator, Perl uses a default iterator, $_. $_ is the first and friendliest of the built-in variables:
foreach ( @array ) {
	print $_;
};

#If using the default iterator, and you only wish to put a single statement inside your loop, you can use the super-short loop syntax:
print $_ foreach @array;

#Loop Control

CANDIDATE: for my $candidate ( 2 .. 100 ) {
	for my $divisor ( 2 .. sqrt $candidate ) {
		next CANDIDATE if $candidate % $divisor == 0;
	}
	print $candidate." is prime\n";
}
