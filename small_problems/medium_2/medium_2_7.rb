=begin
Write a method that returns the number of Friday the 13ths in the year given by
an argument. You may assume that the year is greater than 1752 (when the United
Kingdom adopted the modern Gregorian Calendar) and that it will remain in use
for the foreseeable future.

Inputs:
- Integer, representing year in question

Outputs:
- Integer, representing count of F13 instances in the year

Data Structure(s):
- N/A

Rules:
  Explicit:
  - Year argument will always be > 1752

  Implicit:
  - N/A

Clarifications:
- How should the method handle invalid inputs?

Algorithm:
- Require Date class
- Initialize variable count and assign to Integer value 0
- Initialize variable thirteenth and assign to new Date object representing the
  13th day of January for the year in question
- Loop 12 times:
  - Increment count variable is the current thirteenth value is a Friday
  - Shift thirteenth Date value forward one month
- Return count

Examples:

friday_13th(2015) == 3
friday_13th(1986) == 1
friday_13th(2019) == 2
=end

require 'date'

def friday_13th(year)
  count = 0
  thirteenth = Date.new(year, 1, 13)

  12.times do
    count += 1 if thirteenth.friday?
    thirteenth = thirteenth.next_month
  end

  count
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
