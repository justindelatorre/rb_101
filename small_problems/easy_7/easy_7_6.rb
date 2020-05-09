=begin
Modify the method from the previous exercise so it ignores non-alphabetic
characters when determining whether it should uppercase or lowercase each
letter. The non-alphabetic characters should still be included in the return
value; they just don't count when toggling the desired case.

Inputs:
- string

Outputs:
- string

Requirements:
- output string must be a new string
- output string must alternate cases
- case switching doesn't happen "through" non-alphabetical characters, so case
  must not alternate even if not applied to the character
- How to handle empty strings or nil?

Abstraction:
- Set to_uppercase value to true
- Set index to 0
- Set new_str = ''
- Loop through each char in the string until index == str.size
- If to_uppercase is true and char is alphabetical, upcase the current char and
  add to new string
  - Flip is_uppercase to its opposite
- Else if to_uppercase is false and char is alphabetical, downcase the current
  char and add to new string
  - Flip is_uppercase to its opposite
- Else just add the char to new string
- Increment index by 1
- Return new_str

Example:
staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
=end

ALPHABETICAL_CHARS = 'A'..'z'

def staggered_case(str)
  new_str = ''
  index = 0
  to_uppercase = true

  while index < str.size
    if to_uppercase && ALPHABETICAL_CHARS.include?(str[index])
      new_str << str[index].upcase
      to_uppercase = !to_uppercase
    elsif !to_uppercase && ALPHABETICAL_CHARS.include?(str[index])
      new_str << str[index].downcase
      to_uppercase = !to_uppercase
    else
      new_str << str[index]
    end

    index += 1
  end

  new_str
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
