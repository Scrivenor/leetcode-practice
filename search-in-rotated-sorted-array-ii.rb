# @param {Integer[]} nums
# @param {Integer} target
# @return {Boolean}
def search(nums, target)   
  if target < nums[0] 
    nums.reverse_each do |element|
      if element == target
        return true
      end
    end
  else
    nums.each do |element|
      if element == target
        return true
      end
    end
  end
  return false
end

p search([2,5,6,0,0,1,2], 0)