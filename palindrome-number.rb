# @param {Integer} x
# @return {Boolean}
def is_palindrome( x )

  if x.negative?
    return false # short cicruit all negative integers, according to the example they'll never be palindromes.
  end

  if x == 0
    return true
  end

  return x.digits == x.digits.reverse()

  # following is "cheating" according to the original problem description but it works great!
  # return x == x.to_s.reverse().to_i

end

p is_palindrome (-0)

