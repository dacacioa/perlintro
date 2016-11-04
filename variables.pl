use strict;
use warnings;
# Esto es cun comentairo"
print "Hello world\n";

my $helloworld = reverse "Hello world";
print  $helloworld;

#Variables

my $undef = undef;
my $number = 5;
my $number5 = $number * 5;

print $number5."\n";

my $str1 = "4G";
my $str2 = "4H";

print $str1 .  $str2."\n"; # "4G4H"
print $str1 +  $str2."\n"; # "8" with two warnings
print $str1 eq $str2."\n"; # "" (empty string, i.e. false)
print $str1 == $str2."\n"; # "1" with two warnings

# The classic error
print "yes" == "no"."\n"; # "1" with two warnings; both values evaluate to 0 when used as numbers


# ARRAY

my @array = (
	"print",
	"these",
	"strings",
	"out",
	"for",
	"me", # trailing comma is okay
);

print $array[0]."\n"; # "print"
print $array[1]."\n"; # "these"
print $array[2]."\n"; # "strings"
print $array[3]."\n"; # "out"
print $array[4]."\n"; # "for"
print $array[5]."\n"; # "me"
print $array[6]."\n"; # returns undef, prints "" and raises a warning
print "\n";

print $array[-1]."\n"; # "me"
print $array[-2]."\n"; # "for"
print $array[-3]."\n"; # "out"
print $array[-4]."\n"; # "strings"
print $array[-5]."\n"; # "these"
print $array[-6]."\n"; # "print"
print $array[-7]."\n"; # returns undef, prints "" and raises a warning

print "This array has ".(scalar @array)."elements"."\n"; # "This array has 6 elements"
print "The last populated index is ".$#array."\n";       # "The last populated index is 5"

# Caution. One day you will put somebody's email address inside a string, "jeff@gmail.com". This will cause Perl to look for an array variable called @gmail to interpolate into the string, and not find it, resulting in a runtime error. Interpolation can be prevented in two ways: by backslash-escaping the sigil, or by using single quotes instead of double quotes.

print "Hello \$string"."\n"; # "Hello $string"
print 'Hello $string'."\n";  # "Hello $string"
print "\@array"."\n";        # "@array"
print '@array'."\n";         # "@array"

#Creating new arrays from old. Perl provides the following functions which act on arrays to create other arrays.

#The join function concatenates many strings into one:

my @elements = ("Antimony", "Arsenic", "Aluminum", "Selenium");
print @elements;             # "AntimonyArsenicAluminumSelenium"
print "@elements";           # "Antimony Arsenic Aluminum Selenium"
print join(", ", @elements); # "Antimony, Arsenic, Aluminum, Selenium"

#In list context, the reverse function returns a list in reverse order. In scalar context, reverse concatenates the whole list together and then reverses it as a single word.

print reverse("Hello", "World");        # "WorldHello"
print reverse("HelloWorld");            # "HelloWorld"
print scalar reverse("HelloWorld");     # "dlroWolleH"
print scalar reverse("Hello", "World"); # "dlroWolleH"

# Hash (diccionarios)

my %scientists = (
	"Newton"   => "Isaac",
	"Einstein" => "Albert",
	"Darwin"   => "Charles",
);

print $scientists{"Newton"}."\n";   # "Isaac"
print $scientists{"Einstein"}."\n"; # "Albert"
print $scientists{"Darwin"}."\n";   # "Charles"
print $scientists{"Dyson"}."\n";    # returns undef, prints "" and raises a warning

#You can convert a hash straight to an array with twice as many entries, alternating between key and value (and the reverse is equally easy):
my @scientists = %scientists;
#However, unlike an array, the keys of a hash have no underlying order. They will be returned in whatever order is more efficient. So, notice the rearranged order but preserved pairs in the resulting array:
print "@scientists"."\n"; # something like "Einstein Albert Darwin Charles Newton Isaac"


my $data = "orange";
my @data = ("purple");
my %data = ( "0" => "blue");

print $data."\n";      # "orange"
print $data[0]."\n";   # "purple"
print $data["0"]."\n"; # "purple"
print $data{0}."\n";   # "blue"
print $data{"0"}."\n"; # "blue"

# hash inside a hash

my %hash = (
	"beer" => "good",
	"bananas" => (
		"green"  => "wait",
		"yellow" => "eat",
	),
);

# The above raises a warning because the hash was declared using a 7-element list

print $hash{"beer"}."\n";    # "good"
print $hash{"bananas"}."\n"; # "green"
print $hash{"green"}."\n"; # "wait?"
print $hash{"wait"}."\n";    # "yellow";
print $hash{"eat"}."\n";     # undef, so prints "" and raises a warning


#In-place array modification. We'll use @stack to demonstrate these:

my @stack = ("Fred", "Eileen", "Denise", "Charlie");
print @stack; # "FredEileenDeniseCharlie"
#pop extracts and returns the final element of the array. This can be thought of as the top of the stack:

print pop @stack; # "Charlie"
print @stack;     # "FredEileenDenise"

#push appends extra elements to the end of the array:

push @stack, "Bob", "Alice";
print @stack; # "FredEileenDeniseBobAlice"

#shift extracts and returns the first element of the array:

print shift @stack; # "Fred"
print @stack;       # "EileenDeniseBobAlice"

#unshift inserts new elements at the beginning of the array:

unshift @stack, "Hank", "Grace";
print @stack; # "HankGraceEileenDeniseBobAlice"


#pop, push, shift and unshift are all special cases of splice. splice removes and returns an array slice, replacing it with a different array slice:

print splice(@stack, 1, 4, "<<<", ">>>"); # "GraceEileenDeniseBob"
print @stack;                             # "Hank<<<>>>Alice"
