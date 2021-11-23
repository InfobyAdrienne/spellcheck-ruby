def sentence_to_check(sentence)

  dictionary = ["these", "words", "are", "spelt", "correctly"]

  new_sentence = sentence.split(" ")
  
  corrected_sentence = new_sentence.map { |word| 
    if dictionary.include?(word)
      word
    else
      "~#{word}~" 
    end
  }

return corrected_sentence.join(" ")

end
