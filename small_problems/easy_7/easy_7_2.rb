=begin
Write a method that takes a string, and then returns a hash that contains 3
entries: one represents the number of characters in the string that are
lowercase letters, one the number of characters that are uppercase letters, and
one the number of characters that are neither.

Inputs:
- string

Outputs:
- hash: contains count of lowercase, uppercase, and non-alphabetical characters

Requirements:
- output hash must have counts of all char types, even with empty string
- non-space, non-numeric chars count as 'neither'

Abstraction:
- Create hash with starting counts of 0 for each char type
- Loop through passed string
  - If current char is lowercase, lowercase += 1
  - Else if current char is uppercase, uppercase += 1
  - Else, neither += 1
- Break loop at end of string

Examples:
letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
=end

def letter_case_count(str)
  hsh = { lowercase: 0, uppercase: 0, neither: 0 }
  
  str.chars.each do |c|
    if ('a'..'z').include?(c)
      hsh[:lowercase] += 1
    elsif ('A'..'Z').include?(c)
      hsh[:uppercase] += 1
    else
      hsh[:neither] += 1
    end
  end

  hsh
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

=begin
Alternate solution:

def letter_case_count(string)
  counts = {}
  characters = string.chars
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }
  counts
end
=end
