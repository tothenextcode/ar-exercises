require_relative '../setup'
require_relative '../exercises/exercise_6'

puts "Callback Exercise 1"
puts "----------"

# Your code goes below here ...
# @store1.employees.create(first_name: "Caleb", last_name: "Summer", hourly_rate: 20)
@employee = Employee.find_by(first_name: "Khurram", last_name: "Virani")

pp @employee.password