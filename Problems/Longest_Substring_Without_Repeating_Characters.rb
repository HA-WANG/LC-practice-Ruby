# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  substr, maxlen = '', 0

  s.each_char do |char|
    if substr.include?(char)
      maxlen = substr.length if maxlen < substr.length
      substr = substr[(substr.index(char) + 1)..-1]
    end
    substr << char
  end
  maxlen = substr.length if maxlen < substr.length
  maxlen
end

p length_of_longest_substring("abcabcbb")
p length_of_longest_substring("bbbbb")
p length_of_longest_substring("pwwkew")

=begin
Given a string, find the length of the longest substring without repeating characters.
Examples:
Given "abcabcbb", the answer is "abc", which the length is 3.
Given "bbbbb", the answer is "b", with the length of 1.
Given "pwwkew", the answer is "wke", with the length of 3.
Note that the answer must be a substring, "pwke" is a subsequence and not a substring.
=end
