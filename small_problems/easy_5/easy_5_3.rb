=begin
As seen in the previous exercise, the time of day can be represented as the
number of minutes before or after midnight. If the number of minutes is
positive, the time is after midnight. If the number of minutes is negative, the
time is before midnight.

Write two methods that each take a time of day in 24 hour format, and return
the number of minutes before and after midnight, respectively. Both methods
should return a value in the range 0..1439.

You may not use ruby's Date and Time methods.
=end

MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = 1440

def after_midnight(time_str)
  # Separate out hour and minute sections of time_str and convert to integers
  hours = time_str[0, 2].to_i
  minutes = time_str[3, 2].to_i

  # Calculate how many minutes are in the hours represented
  hours_to_minutes = hours * MINUTES_PER_HOUR

  total_minutes = hours_to_minutes + minutes

  # Calculate total minutes represented
  total_minutes == 1440 ? 0 : total_minutes
end

def before_midnight(time_str)
  delta = MINUTES_PER_DAY - after_midnight(time_str)
  delta == MINUTES_PER_DAY ? 0 : delta
end

p after_midnight('00:00')
p before_midnight('00:00')
p after_midnight('12:34')
p before_midnight('12:34')
p after_midnight('24:00')
p before_midnight('24:00')
