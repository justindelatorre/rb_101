=begin
Remove people with age 100 and greater.
=end

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.each { |k, v| ages.delete(k) if v >= 100 }

p ages

=begin
Alternate solution:

ages.delete_if { |k, v| v >= 100 }
=end
