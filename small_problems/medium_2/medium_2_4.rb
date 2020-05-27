=begin
Write a method that takes a string as argument, and returns true if all
parentheses in the string are properly balanced, false otherwise. To be properly
balanced, parentheses must occur in matching '(' and ')' pairs.

Inputs:
- String

Outputs:
- Boolean

Data Structure(s):
- String, to hold all open and closed parentheses

Rules:
  Explicit:
  - Balanced parentheses pairs must start with a '('.
  - "Balanced" means that each '(' must have an equivalent ')'.
  Implicit:
  - First parentheses must be open, e.g. '('.

Clarifications:
- How do you handle invalid arguments e.g., non-Strings, nil, empty Strings,
  etc.?

Algorithm:
- Initialize variable and assign to Integer value 0.
- Loop through characters in passed String argument:
  - If the current character is '(', increment Integer value by 1.
  - Else if the character is ')', decrement Integer value by -1.
  - Return false if Integer variable ever goes below -1
- Return true

Examples:

balanced?('What (is) this?') == true
balanced?('What is) this?') == false
balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true
balanced?('((What)) (is this))?') == false
balanced?('Hey!') == true
balanced?(')Hey!(') == false
balanced?('What ((is))) up(') == false
=end

def balanced?(str)
  score = 0

  str.chars.each do |char|
    if char == '('
      score += 1
    elsif char == ')'
      score -= 1
    end

    break false if score < 0
  end

  score.zero?
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
