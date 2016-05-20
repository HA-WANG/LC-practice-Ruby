# @param {Integer} x
# @return {Integer}
def my_sqrt(x)
  return 0 if x.zero?

  s = 1.0
  while (s * s - x).abs > 0.1
    s = (s + (x / s)) / 2
  end
  s.truncate
end

p my_sqrt(4)
p my_sqrt(100)

=begin
Implement int sqrt(int x).
Compute and return the square root of x.
=end

# Reference: https://github.com/0x01f7/leetcode
# WOW~~
