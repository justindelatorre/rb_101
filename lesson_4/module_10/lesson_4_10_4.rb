=begin
Pick out the minimum age from our current Munster family hash.
=end

ages = {
  "Herman" => 32,
  "Lily" => 30,
  "Grandpa" => 5843,
  "Eddie" => 10,
  "Marilyn" => 22,
  "Spot" => 237
}

min_age = 10000

ages.each { |_, v| min_age = v if v < min_age }

p min_age

=begin
Alternate solution:

ages.values.min
=end
