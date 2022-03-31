# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    myHash ={}
    for i in 0..nums.length do
      complement = target - nums[i]
      if myHash.member?(complement)
        return [myHash[complement], i]
      end
      myHash[nums[i]] = i
    end
end


p two_sum( [2,7,11,15], 9 )
p two_sum( [3,2,4], 6 )
p two_sum( [3,3], 6 )