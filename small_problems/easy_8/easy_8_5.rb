=begin
Write a method that returns a list of all substrings of a string that are
palindromic. That is, each substring must consist of the same sequence of
characters forwards as it does backwards. The return value should be arranged in
the same sequence as the substrings appear in the string. Duplicate palindromes
should be included multiple times.

You may (and should) use the substrings method you wrote in the previous
exercise.

For the purposes of this exercise, you should consider all characters and pay
attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor
"Abc-bA" are. In addition, assume that single characters are not palindromes.

Inputs:
- string

Outputs:
- array containing strings

Requirements:
- use the substrings method from previous exercise
- consider all characters and case
- order of elements in output array should match order of appearance in
  argument string
- duplicate palindroms should show up multiple times

Abstraction:
- Instantiate empty target array
- Use substrings method to get superset array of all substrings
- Loop through each substring in superset. For each substring:
  - Split the substring in half
  - Reverse the second half
  - Check if the first half equals the second, reversed half
    - If so, then add the full substring to the target array
- Return target array

Examples:

palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
=end

def substrings_at_start(str)
  arr = []
  counter = 0 

  while counter < str.size
    arr << str.slice(0..counter)
    counter += 1
  end 

  arr 
end

def substrings(str)
  arr = []
  counter = 0

  while counter < str.size
    arr << substrings_at_start(str.slice(counter..str.size - 1))
    counter += 1
  end

  arr.flatten
end

def palindromes(str)
  palindrome_arr = []
  substring_arr = substrings(str)

  substring_arr.each do |substr|
    half1 = substr.slice(0, (substr.size / 2))
    if substr.size.even?
      half2 = substr.slice((substr.size / 2), (substr.size - 1))
    else
      half2 = substr.slice((substr.size / 2) + 1, (substr.size - 1))
    end

    palindrome_arr << substr if half1 == half2.reverse && substr.size > 1
  end

  palindrome_arr
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
    'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
    'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
    '-madam-', 'madam', 'ada', 'oo'
  ]
p palindromes('knitting cassettes') == [
    'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
  ]

=begin
Alternate Solution:

def palindromes(string)
  all_substrings = substrings(string)
  results = []
  all_substrings.each do |substring|
    results << substring if palindrome?(substring)
  end
  results
end

def palindrome?(string)
  string == string.reverse && string.size > 1
end

Takeaway:
The original solution is overly-engineered. A palindrome is simply a string
that is the same backwards as it is forwards.
=end
