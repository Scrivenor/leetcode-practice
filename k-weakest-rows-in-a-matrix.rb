# @param {Integer[][]} mat
# @param {Integer} k
# @return {Integer[]}
def k_weakest_rows(mat, k)
    
    sumArray = []
    retArray = []

    mat.each_with_index do |row, i|
      sumArray[i] = [row.sum, i]
    end

  tempArray = sumArray.sort
  tempArray = tempArray.slice(0..k-1)
  ind = 0
  tempArray.each do |summ|
    retArray[ind] = sumArray.index(summ)
    ind += 1
  end
  p retArray
end

k_weakest_rows( 
  [[1,1,0,0,0],
  [1,1,1,1,0],
  [1,0,0,0,0],
  [1,1,0,0,0],
  [1,1,1,1,1]], 
  3)