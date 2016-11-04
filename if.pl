use strict;
use warnings;

my $word = "antidisestablishmentarianism";
my $strlen = length $word;

if($strlen >= 15) {
	print "'", $word, "' is a very long word";
} elsif(10 <= $strlen && $strlen < 15) {
	print "'", $word, "' is a medium-length word";
} else {
	print "'", $word, "' is a short word";
}

#Perl provides a shorter "statement if condition" syntax which is highly recommended for short statements:
print "'", $word, "' is actually enormous"."\n" if $strlen >= 20;

#unless
print "'", $word, "' is actually enormous2"."\n" unless $strlen >= 20;


my $num = 8 + 8 if $strlen >=20;
print $num."\n";

#Check a condition and choose between two values

my $gain = 48;
print "You gained ", $gain, " ", ($gain == 1 ? "experience point" : "experience points"), "!";

my $eggs = 5;
print "You have ", $eggs == 0 ? "no eggs" :
                   $eggs == 1 ? "an egg"  :
                   "some eggs";

#The ternary operator ?: allows simple if statements to be embedded in a statement. The canonical use for this is singular/plural forms:

my $gain = 48;
print "You gained ", $gain, " ", ($gain == 1 ? "experience point" : "experience points"), "!";
