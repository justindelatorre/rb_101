=begin
Given the below nested hash, figure out the total age of just the male members
of the family.

Abstraction:
- Loop through munsters hash using reduce
- Select the age of munsters who are male
=end

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

age_sum = 0

munsters.each do |_, details|
  age_sum += details['age'] if details['gender'] == 'male'
end

p age_sum
