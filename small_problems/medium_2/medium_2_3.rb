=begin
Write a method that takes a string, and then returns a hash that contains 3
entries: one represents the percentage of characters in the string that are
lowercase letters, one the percentage of characters that are uppercase letters,
and one the percentage of characters that are neither.

You may assume that the string will always contain at least one character.

Inputs:
- String

Outputs:
- Hash, containing three key-value pairs:
  - Pct of lowercase letters in argument String
  - Pct of uppercase letters in argument String
  - Pct of non-letters in argument String

Data Structure(s):
- Array of characters from argument String


Rules:
  Explicit:
  - Argument String will always contain at least one character.
  - Pct values will be represented as either Integer or Float.
  Implicit:
  - N/A

Clarifications:
- How should pct values be represented?

Algorithms:
- Initialize three variables and assign to Float with value 0.0.
- Initialize variable and assign to Hash with three keys: lowercase, uppercase,
  and neither, all with values of 0.
- Initialize variable and assign to length of argument String.
- Loop through String characters:
  - If current character is a non-letter, increment neither Float variable by 1
  - Else if current character is capital, increment uppercase Float variable by 1
  - Else if current character is lowercase, increment lowercase Float variable
    by 1
- Re-assign Hash values to pcts of corresponding neither, lowercase, and
  uppercase Floats over length of argument String. 

Examples:

letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
=end

def letter_percentages(str)
  neither = 0.0
  lowercase = 0.0
  uppercase = 0.0
  hsh = {lowercase: 0, uppercase: 0, neither: 0}
  length = str.length

  str.chars.each do |char|
    if ('a'..'z').include?(char)
      lowercase += 1
    elsif ('A'..'Z').include?(char)
      uppercase += 1
    else
      neither += 1
    end
  end

  hsh[:lowercase] = lowercase / length * 100
  hsh[:uppercase] = uppercase / length * 100
  hsh[:neither] = neither / length * 100

  hsh

end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

=begin
The above logic is correct, but it might be stylistically better to decompose
the large method into smaller methods.
=end
