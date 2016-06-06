# @param {String} pattern
# @param {String} str
# @return {Boolean}
def word_pattern(pattern, str)
  pattern = pattern.chars
  str = str.split(' ')
  return false if pattern.size != str.size

  p2s, s2p = {}, {}
  pattern.zip(str) do |p, s|
    return false if p2s.key?(p) && p2s[p] != s
    return false if s2p.key?(s) && s2p[s] != p
    p2s[p], s2p[s] = s, p
  end
  return true
end

p word_pattern("abba", "dog cat cat dog")
p word_pattern("abba", "dog cat cat fish")
p word_pattern("aaaa", "dog cat cat dog")
p word_pattern("abba", "dog dog dog dog")

=begin
Given a pattern and a string str, find if str follows the same pattern.
Here follow means a full match,
such that there is a bijection between a letter in pattern and a non-empty word in str.
Examples:
  1. pattern = "abba", str = "dog cat cat dog" should return true.
  2. pattern = "abba", str = "dog cat cat fish" should return false.
  3. pattern = "aaaa", str = "dog cat cat dog" should return false.
  4. pattern = "abba", str = "dog dog dog dog" should return false.
Notes:
  You may assume pattern contains only lowercase letters,
  and str contains lowercase letters separated by a single space.
=end

# Reference: https://github.com/0x01f7/leetcode
