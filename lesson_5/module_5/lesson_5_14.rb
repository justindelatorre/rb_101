=begin
Given this data structure write some code to return an array containing the
colors of the fruits and the sizes of the vegetables. The sizes should be
uppercase and the colors should be capitalized.

The return value should look like this:

[["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]
=end

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

new_arr = []

hsh.each do |_, details|
  if details[:type] == 'fruit'
    new_arr << details[:colors].map { |color| color.capitalize }
  else
    new_arr << details[:size].upcase
  end 
end

p new_arr
