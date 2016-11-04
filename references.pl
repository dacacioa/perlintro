#That's obviously unnecessarily laborious, because you can shorten it to:

my %owner1 = (
	"name" => "Santa Claus",
	"DOB"  => "1882-12-25",
);

my %owner2 = (
	"name" => "Mickey Mouse",
	"DOB"  => "1928-11-18",
);

my @owners = ( \%owner1, \%owner2 );

my %account = (
	"number" => "12345678",
	"opened" => "2000-01-01",
	"owners" => \@owners,
);

#It is also possible to declare anonymous arrays and hashes using different symbols. Use square brackets for an anonymous array and braces for an anonymous hash. The value returned in each case is a reference to the anonymous data structure in question. Watch carefully, this results in exactly the same %account as above:
# Braces denote an anonymous hash

my $owner1Ref = {
	"name" => "Santa Claus",
	"DOB"  => "1882-12-25",
};

my $owner2Ref = {
	"name" => "Mickey Mouse",
	"DOB"  => "1928-11-18",
};

# Square brackets denote an anonymous array
my $ownersRef = [ $owner1Ref, $owner2Ref ];

my %account = (
	"number" => "12345678",
	"opened" => "2000-01-01",
	"owners" => $ownersRef,
);

#Or, for short (and this is the form you should actually use when declaring complex data structures in-line):

my %account = (
	"number" => "31415926",
	"opened" => "3000-01-01",
	"owners" => [
		{
			"name" => "Philip Fry",
			"DOB"  => "1974-08-06",
		},
		{
			"name" => "Hubert Farnsworth",
			"DOB"  => "2841-04-09",
		},
	],
);

#Acces using references and the -> operator:

my $ownersRef = $account{"owners"};
my $owner1Ref = $ownersRef->[0];
my $owner2Ref = $ownersRef->[1];
print "Account #", $account{"number"}, "\n";
print "Opened on ", $account{"opened"}, "\n";
print "Joint owners:\n";
print "\t", $owner1Ref->{"name"}, " (born ", $owner1Ref->{"DOB"}, ")\n";
print "\t", $owner2Ref->{"name"}, " (born ", $owner2Ref->{"DOB"}, ")\n";
