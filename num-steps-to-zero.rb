# @param {Integer} num
# @return {Integer}
def number_of_steps( num )
  count = 0
  
  while num != 0
    if num % 2 == 0
      num = num / 2
      count +=1
    else
      num -= 1
      count +=1    
    end
  end

  count
    
end

p number_of_steps( 8 )