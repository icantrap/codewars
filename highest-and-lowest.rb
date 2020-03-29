# an explicit solution with all the parts
def high_and_low(numbers)
  # split the string up. split will return an array of strings, so create an array of integers.
  values = []
  
  numbers.split.each do |number|
    values << number.to_i
  end
  
  # initialize min and max with the value from the head of the array
  min = values [0]
  max = values [0]
  
  # iterate and check for new min or max value
  for value in values do
    if value < min
      min = value
    end
    
    if value > max
      max = value
    end
  end
  
  "#{max} #{min}"
end


# a super short solution
def high_and_low(numbers)
  values = numbers.split.map(&:to_i)
  
  "#{values.max} #{values.min}"
end


