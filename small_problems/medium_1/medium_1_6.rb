=begin
Exercise: https://launchschool.com/exercises/0f677535

Inputs:
- String

Outputs:
- Prints to the console

Data Structure(s):
- Array, to store commands from String input

Rules:
  Explicit:
  - (Operational rules are contained within problem statement.) 
  - Register must be initialized to 0.

  Implicit:
  - 

Clarifications:
- How do you handle invalid arguments?
- Should commands be case-sensitive?

Algorithm:
- Initialize register variable to 0
- Initialize array variable to return value of splitting argument string
- Initialize array variable to represent stack
- Loop through array variable
  - For each element, perform operation for equivalent command

Examples:
minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8
=end

def minilang(str)
  register = 0
  command_arr = str.split
  stack = []

  command_arr.each do |command|
    case command
    when 'PUSH'
      then stack.push(register)
    when 'ADD'
      then register += stack.pop
    when 'SUB'
      then register -= stack.pop
    when 'MULT'
      then register *= stack.pop
    when 'DIV'
      then register /= stack.pop
    when 'MOD'
      then register = register % stack.pop
    when 'POP'
      then register = stack.pop
    when 'PRINT'
      then puts register
    else
      register = command.to_i
    end
  end
end

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)
