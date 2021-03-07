# EXERCISE 1
##debug this:
def say_hello(name)
  "hello #{name}"
end

# puts say_hello("Jack")
# code does not text interpolate into the string
# fix is text interperlotaion should be #{} not #()

# SOLVED

##-----------------

# EXERCISE 2
## debug this:

def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  ciphertext_chars = plaintext.chars.map do |char|
    # puts char
    # puts (65 + cipher.find_index(char))
    (65 + cipher.find_index(char)).chr
  end
  ciphertext_chars.join
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[char.ord - 65]
  end
  plaintext_chars.join
end

# puts encode("theswiftfoxjumpedoverthelazydog", "secretkey") # "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
#
# puts decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey") #
# "theswiftfoxjumpedoverthelazydog"

#first run, nil can't be coerced into an integer with + on line 21 (where it is being run inside the map method on line 20)
    ## it seems cipher.find_index(char) is resolving as nil rather than an integer on a particular letter.
    ## ran puts char to find out where it stopped - was z
    ## on review of cipher it appears it is using ... to not include z rather than .. to include z
    ## SOLVED encode

# decode does not throw any errors but does not return expected result, on review it has the same issue as encode, so will alter to fix.
 ## it adjusted result but did not give expected result
 ## the issue is that it is taking the character position in the standard ordinance and subtracting it from 65 and looking in the cipher, but that is the wrong reverseal of the encoding,
 # --> it should be cipher[char.ord - 65]

## SOLVED

#----------------

 # EXERCISE 3
 ## debug this:

 def factorial(n)
   product = n
   p "at the start product is #{product}"
   while n > 1
     n -= 1
     p "we multiply #{product} by #{n}"
     product *= n
     p "we get #{product}"
   end
   product
 end

## when running buggy code we note that the first n it multiplies by is n-1 so n is missed off the product of the factorial

#fix is to put product = n
# when run we note that it multiplies by 0 at the end to turn product to 0, therefore the while loop should stop when n is == 1

##solved

#----------------

 # EXERCISE 4
 ## Explain the problems in this code:

 def encode_2(plaintext, key)
   cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
   ciphertext_chars = plaintext.chars.map do |char|
     (65 + cipher.find_index(char)).chr
   end
   ciphertext_chars.join
 end

 def decode_2(ciphertext, key)
   cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
   plaintext_chars = ciphertext.chars.map do |char|
     cipher[65 - char.ord]
   end
   plaintext_chars.join
 end

 # Intended output:
 #
 # puts encode_2("theswiftfoxjumpedoverthelazydog", "secretkey")
 # # => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
 # #
 # puts decode_2("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
 # => "theswiftfoxjumpedoverthelazydog"

## Problem 1 - the cipher builder does not include the letter z in it as it uses ... instead of .. (... only incoporate up to but not including the number after it) - change line 84 and line 92

## problem 2 - the decoder map element (line 94) has been built incorrectly it is not a reverse encoding function properly.


# FOUND THE PROBLEM

# SOLVED

# DEBUGGING PRACTICAL COMPLETE!!
