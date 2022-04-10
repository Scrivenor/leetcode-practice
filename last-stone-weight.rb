# @param {Integer[]} stones
# @return {Integer}
def last_stone_weight(stones)
  if stones.length == 0
    return 0
  elsif stones.length == 1
    return stones[0]
  else 
    y, x = stones.max(2)
    if x==y # delete ONLY 2, it's possible to have an array full of equal size stones!
      stones.delete_at(stones.find_index(x))
      stones.delete_at(stones.find_index(x))
    else
      stones.delete_at(stones.find_index(x))
      stones[stones.index( y )] = y - x
    end
  end
  # p stones
  last_stone_weight(stones)

end


myArray = [2,7,4,1,8,1,30,3,4]
p myArray

p last_stone_weight(myArray)