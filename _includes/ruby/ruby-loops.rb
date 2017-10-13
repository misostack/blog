puts "6.Loop\n".green
puts <<EOL
#{"6.1. while loop\n".green}
$i = 0
$num = 5

while $i < $num  do
   puts("Inside the loop i = #$i" )
   $i +=1
end

- do
- until
- each

EOL

$i = 0
$num = 5

while $i < $num  do
  puts("Inside the loop i = #$i" )
  $i +=1
end

$i = 0
$num = 5
until $i > $num - 1 do
  puts("Until : Inside the loop i = #$i" )
  $i +=1
end

for i in 0...10
  if i == $num
    break # exit loop
  end
  if i == 2
    puts "Value of local variable is #{i}".green
  else
    puts "Value of local variable is #{i}"
  end

end

puts <<EOL
#{"Ruby retry Statement".green}
begin
   do_something # exception raised
rescue
   # handles error
   retry  # restart from beginning
end

EOL