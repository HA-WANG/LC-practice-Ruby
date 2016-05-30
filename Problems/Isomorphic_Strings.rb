# @param {String} s
# @param {String} t
# @return {Boolean}
def is_isomorphic(s, t)
  hash_s, hash_t = {}, {}

  s.chars.each_with_index do |s_char, idx|
    t_char = t[idx]
    if hash_s.key?(s_char) || hash_t.key?(t_char)
      return false if (hash_s[s_char] != t_char) || (hash_t[t_char] != s_char)
    else
      hash_s[s_char] = t_char
      hash_t[t_char] = s_char
    end
  end
  return true
end

p is_isomorphic("egg","add")
p is_isomorphic("foo","bar")
p is_isomorphic("paper","title")

=begin
Given two strings s and t, determine if they are isomorphic.
Two strings are isomorphic if the characters in s can be replaced to get t.
All occurrences of a character must be replaced with another character while preserving the order of characters.
No two characters may map to the same character but a character may map to itself.
For example,
  Given "egg", "add", return true.
  Given "foo", "bar", return false.
  Given "paper", "title", return true.
Note:
  You may assume both s and t have the same length.
=end
