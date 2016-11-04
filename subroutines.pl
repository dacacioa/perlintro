sub hyphenate {

  # Extract the first argument from the array, ignore everything else
  my $word = shift @_;

  # An overly clever list comprehension
  $word = join "-", map { substr $word, $_, 1 } (0 .. (length $word) - 1);
  return $word . "\n";
}

if ($ARGV[0]){
    print hyphenate($ARGV[0]); # "e-x-t-e-r-m-i-n-a-t-e"
} else{
  print "I need minimum one string argument"
}


#Unlike almost every other major programming language, Perl calls by reference. This means that the variables or values available inside the body of a subroutine are not copies of the originals. They are the originals.

my $x = 7;

sub reassign {
  $_[0] = 42;
}

reassign($x);
print $x; # "42"
