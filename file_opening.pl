#!/usr/bin/perl
open(DATA, "<file.txt") or die "Couldnt open the file file.txt,$!";
while(<DATA>){
	print "$_";
}

#For example, to open a file for updating without truncating it −
#open(DATA, "+<file.txt"); or die "Couldn't open file file.txt, $!";

#To truncate the file first −
#open DATA, "+>file.txt" or die "Couldn't open file file.txt, $!";

#You can open a file in the append mode. In this mode, writing point will be set to the end of the file.
#open(DATA,">>file.txt") || die "Couldn't open file file.txt, $!";

#you can't read from it unless you also place a plus sign in front of it −
#open(DATA,"+>>file.txt") || die "Couldn't open file file.txt, $!";