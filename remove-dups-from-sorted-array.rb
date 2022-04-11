# # @param {Integer[]} nums
# # @return {Integer}
# def remove_duplicates(nums)
#   count = 0
#   nums.each.with_index do |num, i| 
#     if num == nums[i+1]
#       count += 1
#       nums[i] = "dup"
#     end
#   end
  
  
#   nums.delete("dup")
#   for k in 1..count do
#     nums[nums.length] = nil
#   end
#   return count, nums

# @param {Integer[]} nums
# @return {Integer}

# The description for this problem does not match at 
# all what actually passes the submission, hence all
#  that logic commented out above

def remove_duplicates(nums)
  nums.uniq!
  nums.size
end


end

p remove_duplicates( [0,0,1,1,1,2,2,3,3,4] )