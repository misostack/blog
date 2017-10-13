puts "2.Ruby Variables\n".green

puts "Array\n".red
arr = [  "fred", 10, 3.14, "This is a string", "last element" ]
puts "[".green
arr.each do |i|
  puts i.to_s.green
end
puts "]\n".green

puts "Ruby Hashes\n".red
hsh = colors = { "red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f }
hsh.each do |key, value|
  print key, " is ", value, "\n"
end

puts "Ruby Ranges\n".red

[1..10].each do |i|
  puts "Number #{i}"
end


puts ("Line : " + __LINE__.to_s).red

# __FILE__ : current file
# nil : null

# puts "3+.\n".green
# puts "Please enter your name : "
# name = gets.chomp
# puts "Hello #{name}!"