=begin
Write a method that takes a floating point number that represents an angle
between 0 and 360 degrees and returns a String that represents that angle in
degrees, minutes and seconds. You should use a degree symbol (°) to represent
degrees, a single quote (') to represent minutes, and a double quote (") to
represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

Note: your results may differ slightly depending on how you round values, but
should be within a second or two of the results shown.

You should use two digit numbers with leading zeros when formatting the minutes
and seconds, e.g., 321°03'07".

You may use this constant to represent the degree symbol:

DEGREE = "\xC2\xB0"

Inputs:
- float

Outputs:
- String that represents input float angle in degrees

Requirements:
- Must use degree symbol for degree
- Must use single quotes for minutes
- Must use double quotes for seconds
- Minutes and seconds must have two digits when formattin
- Note: 1 degree = 60 minutes, 1 minute = 60 seconds

Abstraction:
- Extract decimal part of float if applicable. If a whole number is passed in,
  simply return the string representation of the whole number.
  - To extract decimal portion, convert float to string and grab everything to
    the right of the decimal point and convert back to a float.
- Multiply the decimal part by 3600 to get representation in seconds.
- Divide that number by 60 to get number of minutes. The remainder will be
  the leftover second.
- Create representative string ensuring two places for minutes and seconds when
  formatting.

Examples:
dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
=end

DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(flt)
  return '%d%s00\'00"' % [flt, DEGREE] if flt % 1 == 0
  flt_str = flt.to_s
  flt_decimal = flt_str.slice(flt_str.index('.'), flt_str.size - 1).to_f
  degrees = flt_str.slice(0, flt_str.index('.')).to_i

  seconds_decimal_flt = flt_decimal * SECONDS_PER_DEGREE

  minutes, seconds = seconds_decimal_flt.divmod(MINUTES_PER_DEGREE)

  '%d%s%02d\'%02d"' % [degrees, DEGREE, minutes, seconds]
end

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

=begin
Alternate solution:

DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(degrees_float)
  total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end
=end
