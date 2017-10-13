puts "1.Hello ruby 2017!".green
print <<EOF
    This is the first way of creating
    here document ie. multiple line string.
EOF

print <<EOC                 # execute commands
  echo "hi there"
  echo "lo there"
EOC

print <<"foo", <<"bar"  # you can stack the
  I said foo.
foo
  I said bar.
bar
puts "2.Example for begin reversed word".green

END {
  puts "END:Terminating Ruby Program"
}

# example for comments

BEGIN {
  puts "BEGIN:Initializing Ruby Program"
}