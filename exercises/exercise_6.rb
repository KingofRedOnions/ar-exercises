require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Employee < ActiveRecord::Base
  belongs_to:store
  validates :first_name, :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true,
                                          greater_than: 40,
                                          less_than: 200 }
  validates :store_id, presence: true
end

@store1.employees.create(
  first_name: 'Dougal',
  last_name: 'Douglas',
  hourly_rate: '120'
)

@store1.employees.create(
  first_name: 'Van',
  last_name: 'Helsing',
  hourly_rate: '180'
)

@store1.employees.create(
  first_name: 'Harry',
  last_name: 'Dresden',
  hourly_rate: '195'
)

@store2.employees.create(
  first_name: 'Vinny',
  last_name: 'Veronica',
  hourly_rate: '110'
)

@store2.employees.create(
  first_name: 'Sarah',
  last_name: 'Connor',
  hourly_rate: '180'
)