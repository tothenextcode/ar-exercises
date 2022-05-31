require_relative '../setup'
require_relative '../exercises/exercise_1'

puts "Callback Exercise 1"
puts "----------"

# Your code goes below here ...
@store1 = Store.find_by(id: 1)
puts @store1, "Just about to create employee for Store 1"

@store1.employees.create!(first_name: "Caleb", last_name: "Summer", hourly_rate: 40)
@employee = Employee.find_by(first_name: "Caleb", last_name: "Summer")

pp @employee.password