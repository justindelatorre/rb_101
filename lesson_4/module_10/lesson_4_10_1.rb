=begin
Turn this array into a hash where the names are the keys and the values are the
positions in the array.
=end

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

hsh = {}

flintstones.each_with_index { |element, idx| hsh[element] = idx }

p hsh
