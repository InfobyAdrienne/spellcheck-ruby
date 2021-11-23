require 'spellcheck'

describe 'highlight the error in a spelt word' do 
 it 'should return the word if it is spelled correctly' do 
  expect(sentence_to_check("spelt")).to eq "spelt"
 end 
 
  it 'should highlight the error in a misspelled word' do 
  expect(sentence_to_check("spnelt")).to eq "~spnelt~"
 end

 it 'should return the word if it is spelled correctly, despite letter cases' do 
  expect(sentence_to_check("SPELT")).to eq "spelt"
 end 

 it 'should highlight the error in a misspelled word within a sentence' do 
  expect(sentence_to_check("these words are spnelt")).to eq "these words are ~spnelt~"
 end 

 # Testing that the input should be a string
 it 'sentence input should be a string' do 
  expect(sentence_to_check(["this", "is", "an", "array"])).to eq "Input needs to be a valid sentence"
 end 
end 