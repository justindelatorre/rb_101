=begin
Select the key-value pairs where the value is 'Fruit'.
=end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(hsh)
  produce_arr = []

  hsh.each do |k, v|
    produce_arr.push([k, v]) if v == 'Fruit'
  end

  produce_arr
end

p select_fruit(produce)
