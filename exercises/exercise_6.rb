require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Hopkins", last_name: "Aaron", hourly_rate: 50)
@store1.employees.create(first_name: "Zammitt", last_name: "Sophie", hourly_rate: 40)
@store2.employees.create(first_name: "Zamkins", last_name: "Thomas", hourly_rate: 30)
@store2.employees.create(first_name: "Rabbit", last_name: "Roger", hourly_rate: 20)
@store2.employees.create(first_name: "Twist", last_name: "Oliver", hourly_rate: 10)