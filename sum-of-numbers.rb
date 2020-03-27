# Our original solution
def get_sum(a,b)
  if a < b
    low = a
    high = b
  else
    low = b
    high = a
  end
  
  sum = 0
  
  for number in low..high do
    sum = sum + number
  end
  
  sum
end

# A version that uses the Range#sum method.
# Doc: https://ruby-doc.org/core-2.4.1/Enumerable.html#method-i-sum
def get_sum(a,b)
  if a < b
    low = a
    high = b
  else
    low = b
    high = a
  end
  
  (low..high).sum
end


# Our condensed solution
def get_sum(a, b)
  if a < b
    (a..b).sum
  else
    (b..a).sum
  end
end
