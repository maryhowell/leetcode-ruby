# Given a string containing just the characters '(', ')', '{', '}', '[' and ']',
 # determine if the input string is valid.
#
# The brackets must close in the correct order, "()" and "()[]{}"
# are all valid but "(]" and "([)]" are not.

def is_valid(string)
  return false if string.length.odd?
  return false if string =~ /[^\[\]\(\)\{\}]/

  pairs = { '{' => '}', '[' => ']', '(' => ')' }

  stack = []
  string.chars do |bracket|
    if expectation = pairs[bracket]
      stack << expectation
    else
      return false unless stack.pop == bracket
    end
  end

  stack.empty?
end
