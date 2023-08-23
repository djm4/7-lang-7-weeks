# Translating between hashes and arrays

hash = { 
    :Britain => 'red, while and blue',
    :Spain => 'red and yellow',
    :Switzerland => 'red and white'
}

array = [
    'red',
    'orange',
    'yellow',
    'green',
    'blue',
    'indigo',
    'violet'
]

# Turn a hash into an array of keys

key_list = hash.collect {|key, value| key }
puts "Key list #{key_list}"

# Turn a hash into an array of values

value_list = hash.collect {|key, value| value }
puts "Value list #{value_list}"

# Turn a hash into an array of key, value pairs

element_list = hash.collect {|element| element }
puts "Element list #{element_list}"

# Turn an array into a hash

rainbow_hash = {}

for index in 0...array.length
  rainbow_hash[index] = array[index]
end

puts "Rainbow hash #{rainbow_hash}"

numbers = (0..15).to_a

puts
puts "Numbers four at a time using each"

numbers.each do |x|
  print "#{x}, "
  puts if x % 4 == 3
end

puts
puts "Numbers four at a time using each_slice"

numbers.each_slice(4) { |tuple| puts "#{tuple}" }

