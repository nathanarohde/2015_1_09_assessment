Description: Program searches a sentence for all exact instances of a word and returns the number of times it is found.  Partial matches are not included.

Set up instructions: 
Ruby Version 2.20

gem install rspec

gem install bundle

  remote: https://rubygems.org/
  specs:
    backports (3.6.4)
    multi_json (1.10.1)
    rack (1.6.0)
    rack-protection (1.5.3)
      rack
    rack-test (0.6.3)
      rack (>= 1.0)
    sinatra (1.4.5)
      rack (~> 1.4)
      rack-protection (~> 1.4)
      tilt (~> 1.3, >= 1.3.4)
    sinatra-contrib (1.4.2)
      backports (>= 2.0)
      multt_json
      rack-protection
      rack-test
      sinatra (~> 1.4.0)
      tilt (~> 1.3)
    tilt (1.4.1)

DEPENDENCIES
  sinatra
  sinatra-contrib

Copyright 2015 Nathan Rohde

License: GPL v2

Dinky little program created by Nathan "Monty" Rohde

Commit 3:
Known errors
1)"Does not recognize words with punctuation as being the same.  I.E. "it!" is not counted as being "it"."
 *RESOLVED in commit 4 using gsub(/\p{^Alnum}/, '')
 *”it7” will still not be counted as “it” this type of entry considered user error, rather than a design flaw to guard against. number letter combinations are also a valid form of communication in text messaging. 

General quirks
1)Webpage design is fundamentally ugly.
