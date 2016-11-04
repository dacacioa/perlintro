use strict;
use warnings;

my %vehiculos = (

  "moto" => "verde",
  "coche" => "rojo",
  "barco" => "azul",
  );

print $vehiculos{"moto"}."\n";
print $vehiculos{"coche"}."\n";
print $vehiculos{"barco"}."\n";

print "Hello world\n";

my $helloworld = reverse "Hello world";
print $helloworld;

print scalar reverse "Hello world";

my @outer = ("Sun", "Mercury", "Venus", undef, "Mars");
my @inner = ("Earth", "Moon");

@outer[5] = "Saturn"."\n";
print @outer."\n";

#A reference is created using a backslash.
my $colour    = "Indigo";
my $scalarRef = \$colour;

#Any time you would use the name of a variable, you can instead just put some braces in, and, within the braces, put a reference to a variable instead.
print $colour."\n";         # "Indigo"
print $scalarRef."\n";      # e.g. "SCALAR(0x182c180)"
print ${ $scalarRef }."\n"; # "Indigo"

#As long as the result is not ambiguous, you can omit the braces too:
print $$scalarRef."\n"; # "Indigo"

#If your reference is a reference to an array or hash variable, you can get data out of it using braces or using the more popular arrow operator, ->:
my @colours = ("Red", "Orange", "Yellow", "Green", "Blue");
my $arrayRef = \@colours;

print $colours[0]."\n";       # direct array access
print ${ $arrayRef }[0]."\n"; # use the reference to get to the array
print $arrayRef->[0]."\n";    # exactly the same thing

#Data structure
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
