require_relative 'lib/calculate_power'

puts "Enter amount of heads"
amount = gets.to_i
result = if (amount / 3) > 1
           CalculatePower.new.calculate(amount)
         else
           amount
         end

puts "Maximum power is: " + result
