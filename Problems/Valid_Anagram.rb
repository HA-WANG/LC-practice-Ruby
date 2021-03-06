# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  return false if s.size != t.size

  temp = ("a".."z").each_with_object({}) { |char, hash| hash[char] = 0 }
  s.each_char { |char| temp[char] += 1 }
  t.each_char do |char|
    temp[char] -= 1
    return false if temp[char] < 0
  end
  return true
end

p is_anagram("anagram", "nagaram")
p is_anagram("rat", "car")

=begin
Given two strings s and t, write a function to determine if t is an anagram of s.
For example,
  s = "anagram", t = "nagaram", return true.
  s = "rat", t = "car", return false.
Note:
  You may assume the string contains only lowercase alphabets.
Follow up:
  What if the inputs contain unicode characters?
  How would you adapt your solution to such case?
=end
