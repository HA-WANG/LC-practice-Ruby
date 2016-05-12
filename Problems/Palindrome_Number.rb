# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  original = x
  reverse = 0

  while x > 0
    x, modulus = x.divmod(10)         # q, m = a.divmod(b) => a = q * b + m
    reverse = reverse * 10 + modulus
  end
  reverse == original
end

p is_palindrome(12321)
p is_palindrome(-1)
p is_palindrome(1234)

=begin
# another solution
def is_palindrome(x)
  if x < 0
    return false
  end
  x.to_s == x.to_s.reverse
end
=end

=begin
Determine whether an integer is a palindrome. Do this without extra space.

Some hints:

Could negative integers be palindromes? (ie, -1)

If you are thinking of converting the integer to string, note the restriction of using extra space.

You could also try reversing an integer.
However, if you have solved the problem "Reverse Integer", you know that the reversed integer might overflow.
How would you handle such case?

There is a more generic way of solving this problem.
=end
