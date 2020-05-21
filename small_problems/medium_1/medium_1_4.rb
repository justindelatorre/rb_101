=begin
Exercise: https://launchschool.com/exercises/61d687f4

Requirements:
- all lights, from 1 to n, are initially off
- on first pass, every light is turned on, i.e. every idx evenly divisible by
  1 is turned on
- on second pass, every idx evenly divisible by 2 is toggled
- on third pass, every idx divisible by 3 is toggled
- Etc. until you reach the nth pass
- indices must be treated as if they began with 1, not 0

Clarifications:
- How should the method handle invalid arguments, e.g. nil, empty String, 0,
  etc.?

Inputs:
- Integer, total number of switches

Outputs:
- Array, containing indices of lights that are on

Intermediate Data Structure(s):
- Array
  - Initialized with lights = Array.new(n)
  - Consider using boolean as element values

Algorithm:
- Initialize a new Array with size n, based on passed argument n, all false
  boolean values
- Initialize a counter variable with Integer value 1
- Initialize another empty Array for use later
- Loop n times
  - Loop through each element (with index) in Array
    - If index % counter, change current boolean value
  - Increment counter
- Loop through each element in first Array
  - If true, add index value to other Array
- Return other Array

Examples:
lights(5) = [1, 4]
lights(10) = [1, 4, 9]
=end

def lights(n)
  lights = Array.new(n, false)
  counter = 1
  on = Array.new

  n.times do
    lights.each_with_index do |light, idx|
      lights[idx] = !light if (idx + 1)  % counter == 0
    end
    counter += 1
  end

  lights.each_with_index do |light, idx|
    on << (idx + 1) if light
  end

  on
end

p lights(5) == [1, 4]
p lights(10) == [1, 4, 9]
p lights(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196,
  225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841,
  900, 961]


=begin
Alternate solution:

# initialize the lights hash
def initialize_lights(number_of_lights)
  lights = Hash.new
  1.upto(number_of_lights) { |number| lights[number] = "off" }
  lights
end

# return list of light numbers that are on
def on_lights(lights)
  lights.select { |_position, state| state == "on" }.keys
end

# toggle every nth light in lights hash
def toggle_every_nth_light(lights, nth)
  lights.each do |position, state|
    if position % nth == 0
      lights[position] = (state == "off") ? "on" : "off"
    end
  end
end

# Run entire program for number of lights
def toggle_lights(number_of_lights)
  lights = initialize_lights(number_of_lights)
  1.upto(lights.size) do |iteration_number|
    toggle_every_nth_light(lights, iteration_number)
  end

  on_lights(lights)
end

p toggle_lights(1000)
=end
