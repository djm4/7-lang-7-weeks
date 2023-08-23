# Simple grep for a file

puts "Please enter the filename"
filename = gets.chomp

puts "Please enter the string to search for"
search = gets.chomp

line_count = 0
File.open(filename, 'r') do |grep_file|
  grep_file.each_line do |line|
    line_count += 1
    puts "#{line_count}: #{line}" if /#{search}/ =~ line
  end
end

