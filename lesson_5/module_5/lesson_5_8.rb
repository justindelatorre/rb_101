=begin
Using the each method, write some code to output all of the vowels from the strings.
=end

hsh = {
  first: ['the', 'quick'],
  second: ['brown', 'fox'],
  third: ['jumped'],
  fourth: ['over', 'the', 'lazy', 'dog']
}

hsh.each do |k, v|
  v.each do |element|
    element.chars.each { |c| puts c if 'aeiou'.include?(c) }
  end
end
