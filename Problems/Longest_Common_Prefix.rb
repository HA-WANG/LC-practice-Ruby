# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  return '' if strs.empty?

  str, length = strs[0], 0
  str.chars.each_with_index do |char, index|
    break if strs[1..-1].any? { |word| word[index] != char }
    length += 1
  end
  str.slice(0, length)
end

strs = ["apple", "applemac", "applembpr"]
p longest_common_prefix(strs)

=begin
Write a function to find the longest common prefix string amongst an array of strings.

=end
