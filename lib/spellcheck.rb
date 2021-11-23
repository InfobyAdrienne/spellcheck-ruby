def sentence_to_check(sentence)
  dictionary = ["these", "words", "are", "spelt", "correctly"]

  if sentence.is_a? String
    new_sentence = sentence.split(" ")
  
    corrected_sentence = new_sentence.map { |word| 
      if dictionary.include?(word.downcase)
        word
      else
        "~#{word}~" 
      end
    }
    return corrected_sentence.join(" ").downcase
  else 
    return "Input needs to be a valid sentence"
  end 

end
