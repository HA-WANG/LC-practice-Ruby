# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  i1, i2 = 0, s.size - 1

  while true
    cmp1 =
      while true
        break if i1 > i2
        c1 = s[i1]; i1 += 1
        break true if /\p{Alnum}/ =~ c1
      end

    cmp2 =
      while true
        break if i1 > i2
        c2 = s[i2]; i2 -= 1
        break true if /\p{Alnum}/ =~ c2
      end

    return true unless cmp1 && cmp2
    return false if c1.downcase != c2.downcase
  end
end

p is_palindrome("A man, a plan, a canal: Panama")
p is_palindrome("race a car")

=begin
Given a string, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.
For example,
  "A man, a plan, a canal: Panama" is a palindrome.
  "race a car" is not a palindrome.
Note:
  Have you consider that the string might be empty? This is a good question to ask during an interview.
  For the purpose of this problem, we define empty string as valid palindrome.
=end

# Reference: https://github.com/0x01f7/leetcode
