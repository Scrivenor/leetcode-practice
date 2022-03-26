# @param {Integer[][]} accounts
# @return {Integer}
def maximum_wealth(accounts)
  
  maxWealth = 0

  accounts.each do |cust_wealth|
    if cust_wealth.sum > maxWealth 
      maxWealth = cust_wealth.sum
    end
  end
  
  maxWealth
  
end

p maximum_wealth( [[2,8,7],[7,1,3],[1,9,5]] )