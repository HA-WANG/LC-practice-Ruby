# @param {String} s
# @return {Boolean}
def is_valid(s)
  stack = []

  s.each_char do |char|
    case char
    when '(', '[', '{'
      stack.push(char)
    when ')'
      return false if stack.pop != '('
    when ']'
      return false if stack.pop != '['
    when '}'
      return false if stack.pop != '{'
    else
      nil
    end
  end

  stack.empty?
end

p is_valid("({}1[]){}")
p is_valid("[a]{(b)[c]")

=begin
Given a string containing just the characters '(', ')', '{', '}', '[' and ']',
determine if the input string is valid.
The brackets must close in the correct order, "()" and "()[]{}" are all valid
but "(]" and "([)]" are not.
=end
