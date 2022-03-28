# @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
  retArray = []
  i = 0

  while i <= n-1
    
    if ((i+1) % 3) == 0 && ((i+1) % 5) == 0
      retArray[i] = "FizzBuzz"
    elsif ((i+1) % 3) == 0
      retArray[i] = "Fizz"
    elsif ((i+1) % 5) == 0
      retArray[i] = "Buzz"
    else
      retArray[i] = (i+1).to_s
    end
    i += 1
  end

  retArray

end

p fizz_buzz(150)