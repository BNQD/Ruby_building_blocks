def substrings (sentence, dictionary)
  substring_count = {}
  sentence = sentence.downcase!
  for a in dictionary
    matches = sentence.scan(a)
    if matches.empty? == false
      substring_count[a] = matches.size
      p matches
    end
  end
  puts substring_count
end