=begin
Write a method that takes a string as an argument and returns a new string in
which every uppercase letter is replaced by its lowercase version, and every
lowercase letter by its uppercase version. All other characters should be
unchanged.

You may not use String#swapcase; write your own version of this method.

Inputs:
- string

Outputs:
- string

Requirements:
- Capital letters should become lowercase
- Lowercase letters should become capital
- All other characters do not change
- What to do with empty or nil arguments?
- New string must be returned

Abstraction:
- Cycle through each char in string
- If uppercase, make downcase
- Else if lowercase, make upcase
- Else, leave alone
- Re-join string

Example:

swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
=end

def swapcase(str)
  new_str = ''
  index = 0

  while index < str.size
    if ('A'..'Z').include?(str[index])
      new_str << str[index].downcase
    elsif ('a'..'z').include?(str[index])
      new_str << str[index].upcase
    else
      new_str << str[index]
    end

    index += 1
  end

  new_str
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
