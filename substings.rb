def substrings(word, dictionary)
  words = {}
  for i in (0..(word.size - 1))
    for j in (i..(word.size - 1))
      substring = word[i..j]
      if dictionary.include?(substring)
        words[substring] = words.fetch(substring, 0) + 1
      end
    end
  end
  return words
end

puts "Word:"
word = gets.chomp
puts "Substrings dictionary, comma delimited:"
dictionary = gets.chomp.split(",").map(&:strip)

puts substrings(word, dictionary)