require 'erb'

price = 8.75



# line_1_erb_instance = ERB.new(line_1)

puts
# puts line_1_erb_instance.result  -- cleaning up the code form this line and line # 9 below

puts ERB.new(line_1).result

puts
puts line_2
puts
puts ERB.new(line_3).result
puts
