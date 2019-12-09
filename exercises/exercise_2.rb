require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

puts Store.count

@store1 = Store.first
@store2 = Store.find_by(id: 2)

@store1.name = "Babbleby"
@store1.save