INT_BIT = 32
INT_MAX = 2 ** (INT_BIT - 1) - 1

# @param {Integer} x
# @return {Integer}
def reverse(x)
  return -reverse(x.abs) if x < 0

  result = 0
  while x > 0
    result = result * 10 + x % 10
    x /= 10
  end
  result > INT_MAX ? 0 : result
end

p reverse(1230)
p reverse(-123)
p reverse(1000000003)


=begin
Reverse digits of an integer.

Example1: x = 123, return 321
Example2: x = -123, return -321

Have you thought about this?

Here are some good questions to ask before coding.
Bonus points for you if you have already thought through this!

If the integer's last digit is 0, what should the output be? ie, cases such as 10, 100.

Did you notice that the reversed integer might overflow?
Asresulte the input is a 32-bit integer, then the reverse of 1000000003 overflows.
How should you handle such cases?

For the purpose of this problem, asresulte that your function returns 0 when the reversed integer overflows.
=end
