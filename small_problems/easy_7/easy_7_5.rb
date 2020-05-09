=begin
Write a method that takes a String as an argument, and returns a new String that
contains the original value using a staggered capitalization scheme in which
every other character is capitalized, and the remaining characters are
lowercase. Characters that are not letters should not be changed, but count as
characters when switching between upper and lowercase.

Inputs:
- string

Outputs:
- string

Requirements:
- output string must be a new string
- output string must alternate cases
- case switching happens "through" non-alphabetical characters, so case must
  alternate even if not applied to the character
- How to handle empty strings or nil?

Abstraction:
- Set to_uppercase value to true
- Set index to 0
- Set new_str = ''
- Loop through each char in the string until index == str.size
- If to_uppercase is false, upcase the current char and add to new string
- Else if to_uppercase is true, downcase the current char and add to new string
- Flip the current is_uppercase to its opposite value
- Increment index by 1
- Return new_str

Example:
staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
=end

def staggered_case(str)
  new_str = ''
  index = 0
  to_uppercase = true

  while index < str.size
    if to_uppercase
      new_str << str[index].upcase
    else
      new_str << str[index].downcase
    end

    to_uppercase = !to_uppercase
    index += 1
  end

  new_str
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
