def length_of_last_word(s)
  words = s.split(' ')
  words.last ? words.last.length : 0
end

p length_of_last_word("Hello World")
