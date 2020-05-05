=begin
Write a method that will take a short line of text, and print it within a box.
You may assume that the input will always fit in your terminal window.

Inputs:
- string

Outputs:
- string printed to console

Requirements:
- input string
- top and bottom will consist of '+' and '-'
- top and bottom will expand depending on text: str.length + 2
- sides will be pipes
- 1 space character padding on each side of str
- 1 "row" padding above and below input string
- empty string will return an empty box

Data Structure:
- strings

Algorithm:
- Get char count of input string
- Print top border according to char count + 2
- Print upper padding layer according to char count + 2
- Print input str with sides + padding
- Print lower padding according to char count + 2
- Print bottom border according to char count + 2
- (Note that steps 2 and 6, and 3 and 5 are similar)

Examples:

print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+

print_in_box('')
+--+
|  |
|  |
|  |
+--+
=end

def print_border(num)
  puts '*' + ('-' * num) + '*'
end

def print_padding(num)
  puts '|' + (' ' * num) + '|'
end

def print_input(str)
  puts '| ' + str + ' |'
end

def print_in_box(str)
  char_count = str.length + 2

  print_border(char_count)
  print_padding(char_count)
  print_input(str)
  print_padding(char_count)
  print_border(char_count)
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('love')
print_in_box('')

=begin
Alternate solution:
def print_in_box(message)
   horizontal_rule = "+#{'-' * (message.size + 2)}+"
   empty_line = "|#{' ' * (message.size + 2)}|"

   puts horizontal_rule
   puts empty_line
   puts "| #{message} |"
   puts empty_line
   puts horizontal_rule
end
=end
