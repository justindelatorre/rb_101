=begin
Show an easier way to write this array:

flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
=end

flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

other_flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles )

puts flintstones == other_flintstones
