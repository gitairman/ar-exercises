require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"
print "Please input a new store name: "
user_store = $stdin.gets.chomp
result = Store.create(name: user_store)
result.errors.messages.each do |m|
  puts "ERROR: #{m[0]} #{m[1][0]}"
end