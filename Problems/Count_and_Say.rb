# @param {Integer} n
# @return {String}
def count_and_say(n)
  str = '1'

  (n - 1).times do
    char, count, newstr = str[0], 1, ''
    str[1..-1].each_char do |ch|
      if ch == char
        count += 1
      else
        newstr << count.to_s << char
        char, count = ch, 1
      end
    end
    newstr << count.to_s << char
    str = newstr
  end
  return str
end

p count_and_say(1)
p count_and_say(2)
p count_and_say(3)
p count_and_say(4)
p count_and_say(5)

=begin
The count-and-say sequence is the sequence of integers beginning as follows:
1, 11, 21, 1211, 111221, ...
1 is read off as "one 1" or 11.
11 is read off as "two 1s" or 21.
21 is read off as "one 2, then one 1" or 1211.
Given an integer n, generate the nth sequence.
Note: The sequence of integers will be represented as a string.
=end
