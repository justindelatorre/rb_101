=begin
Write a method that determines the mean (average) of the three scores passed to
it, and returns the letter value associated with that grade.

Numerical Score Letter  Grade
90 <= score <= 100  'A'
80 <= score < 90  'B'
70 <= score < 80  'C'
60 <= score < 70  'D'
0 <= score < 60 'F'

Tested values are all between 0 and 100. There is no need to check for negative
values or values greater than 100.

Inputs:
- (3) integers

Outputs:
- string representing grade of average score

Data Structure(s):
- hash, to contain mapping of score boundaries to letter grades

Requirements:
- must use average value of three argument integers to map letter grade
- output must be a string

Clarifications:
- How do you handle non-negative, non-integer, empty, or nil arguments?
- Should the method only assume three arguments, or be able to take more?

Abstraction:
- (Outside of method) Create hash constant to map letters to ranges
- Initialize empty grade string
- Add three arguments to get sum
- Divide sum by three to get average value
- Loop through hash:
  - If average is in range (which serves as a key), set grade string to value
- Return grade string

Example:

get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"
=end

GRADES_HSH = { (90..100) => 'A', (80..89) => 'B', (70..79) => 'C',
               (60..69) => 'D', (50..59) => 'F' }

def get_grade(grade1, grade2, grade3)
  grade = ''
  avg = (grade1 + grade2 + grade3) / 3

  GRADES_HSH.each { |k, v| grade = v if k.include?(avg) }

  grade
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"

=begin
Alternate solution:

def get_grade(s1, s2, s3)
  result = (s1 + s2 + s3)/3

  case result
  when 90..100 then 'A'
  when 80..89  then 'B'
  when 70..79  then 'C'
  when 60..69  then 'D'
  else              'F'
  end
end
=end
