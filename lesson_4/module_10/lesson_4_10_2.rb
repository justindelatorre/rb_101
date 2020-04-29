=begin
Add up all of the ages from the Munster family hash.
=end

ages = {
  "Herman" => 32,
  "Lily" => 30,
  "Grandpa" => 5843,
  "Eddie" => 10,
  "Marilyn" => 22,
  "Spot" => 237
}

sum_ages = 0

ages.each { |_, v| sum_ages += v }

p sum_ages

=begin
Alternate solution:

ages.values.inject(:+)
=end
