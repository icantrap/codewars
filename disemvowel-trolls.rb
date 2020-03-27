# Our original solution
def disemvowel(str)
  characters = str.chars
  
  characters.each_with_index do |ch, index|
    if (ch == 'a') || (ch == 'e') || (ch == 'i') || (ch == 'o') || (ch == 'u') || (ch == 'A') || (ch == 'E') || (ch == 'I') || (ch == 'O') || (ch == 'U')
      characters[index] = nil
    end
  end 
  
  characters.join
end

# A version that uses the String#include? method
# String#include? method: https://ruby-doc.org/core-2.4.0/String.html#method-i-include-3F
def disemvowel(str)
  characters = str.chars
  
  characters.each_with_index do |char, index|
    if 'AEIOUaeiou'.include?(char)
      characters[index] = nil
    end
  end
  
  characters.join
end

# A version that loops over the index in the array
def disemvowel(str)
  characters = str.chars
  
  for index in 0..characters.length-1 do
    char = characters[index]
    if 'AEIOUaeiou'.include?(char)
      characters[index] = nil
    end
  end
  
  characters.join
end

# The shortest version.
# String#delete method: https://ruby-doc.org/core-2.4.0/String.html#method-i-delete
def disemvowel(str)
  str.delete('aeiouAEIOU')
end

