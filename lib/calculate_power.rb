class CalculatePower
  def calculate(amount)
    number_of_dragons = amount.to_f / 3
    number_of_3_heads_dragons = number_of_dragons.to_i

    remainder = (number_of_dragons - number_of_3_heads_dragons) * 3.01 if number_of_dragons > number_of_3_heads_dragons

    data = if remainder
             prepare_array_with_remainder(number_of_3_heads_dragons, remainder.to_i)
           else
             prepare_array(number_of_3_heads_dragons)
           end

    data.inject(:*).to_s
  end

  def prepare_array(number_of_dragons)
    Array.new(number_of_dragons) { 3 }
  end

  def prepare_array_with_remainder(number_of_dragons, remainder)
    arr = Array.new(number_of_dragons) { 3 }
    if remainder == 1
      arr.pop
      arr << 4
    elsif remainder == 2
      arr << remainder
    end
    arr
  end
end