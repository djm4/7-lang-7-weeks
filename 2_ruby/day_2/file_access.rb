# Read a file without a block

lorem_ipsum = File.new('lorem_ipsum.txt', 'r')

while line = lorem_ipsum.gets
    puts line
end

lorem_ipsum.close

puts
puts '    *** once more with blocking ***'
puts

# Read a file with a block

File.open('lorem_ipsum.txt', 'r') do |lorem_ipsum|

    lorem_ipsum.each_line { |line| puts line }

end
