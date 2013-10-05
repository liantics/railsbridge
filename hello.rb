puts "___________________________________"

puts "___________________________________"
puts "Counting Up"
1.upto(1000) do |x|
if x>6 then
		print "Hello for the #{x}th time, World!"
	else
		print "for #{x}, th is the wrong suffix"
	end
	print "\n"
end

puts "___________________________________"

puts "___________________________________"
puts "Now Count Down"
1000.downto(1) do |x|
	if x>6 then
		print "Hello for the #{x}th time, World!"
	else
		print "for #{x}, th is the wrong suffix"
	end
	print "\n"
end