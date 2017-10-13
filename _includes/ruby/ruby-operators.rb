puts "4.ruby-operators\n".green

puts ("1 + 2 = " + "#{1+2}".to_s + "\n").green
puts ("3 - 2 = " + "#{3-2}".to_s + "\n").green
puts ("2 * 3 = " + "#{2*3}".to_s + "\n").green
puts ("2 ** 3 = " + "#{2**3}".to_s + "\n").green
puts ("6 / 2 = " + "#{6/2}".to_s + "\n").green
puts ("6 % 2 = " + "#{6%2}".to_s + "\n").green

puts "Comparison Operators\n".red

puts ("1 == 2 :" + "#{1==2}" + "\n").green
puts ("1 != 2 :" + "#{1!=2}" + "\n").green
puts ("1 > 2 :" + "#{1>2}" + "\n").green
puts ("1 >= 2 :" + "#{1>=2}" + "\n").green
puts ("1 < 2 :" + "#{1<2}" + "\n").green
puts ("1 <= 2 :" + "#{1<=2}" + "\n").green
puts ("1 <=> 2 :" + "#{1<=>2}" + "\n").green
puts ("(1..5) === 3 :" + "#{(1..5) === 3}" + "\n").green
# (1..5) === 6           # => false
# Integer === 42          # => true
# Integer === 'fourtytwo' # => false
#
# /ell/ === 'Hello'     # => true
# /ell/ === 'Foobar'    # => false
puts ("1.0 .eql? 1.0 :" + "#{1.0 .eql? 1.0}" + "\n").green
puts ("1.0 .eql? 1 :" + "#{1.0 .eql? 1}" + "\n").green
puts ("defined? variable :" + "#{defined? variable}".to_s + "\n").green # true or nil