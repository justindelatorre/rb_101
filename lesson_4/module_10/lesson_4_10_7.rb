=begin
Create a hash that expresses the frequency with which each letter occurs in
this string.

Example:

{ "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }
=end

statement = "The Flintstones Rock"

# Make statement into a String with no spaces
statement_no_spaces = statement.split.join('')

hsh = {}

statement_no_spaces.each_char do |char|
  next if char == ' '

  if hsh[char]
    hsh[char] += 1
  else
    hsh[char] = 1
  end
end

p hsh
