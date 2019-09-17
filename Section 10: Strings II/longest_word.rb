def longest_word(sentence)
  words = sentence.split
  longest_word_index = nil
  longest_word_length = 0

  words.each_with_index do |word, index|
    if word.length >= longest_word_length
      longest_word_index = index
      longest_word_length = word.length
    end
  end

  words[longest_word_index]
end

p longest_word("Ruby is my favorite language")