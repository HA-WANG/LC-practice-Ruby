# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
  result, carry = [], 1

  digits.reverse_each do |digit|
    if carry.nonzero?
      value = digit + carry
      carry, value = value.divmod(10)
    else
      value = digit
    end
    result.insert(0, value)
  end
  result.insert(0, carry) if carry.nonzero?

  result
end

p plus_one([9,9])
p plus_one([1,0,9])

=begin
Given a non-negative number represented as an array of digits, plus one to the number.
The digits are stored such that the most significant digit is at the head of the list.
=end
