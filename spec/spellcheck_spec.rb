require 'spellcheck'

describe 'highlight the error in a spelt word' do 
 it 'should return the word if it is spelled correctly' do 
  expect(sentence_to_check("spelt")).to eq "spelt"
 end 
 
  it 'should highlight the error in a mispelled word' do 
  expect(sentence_to_check("spnelt")).to eq "~spnelt~"
 end

 it 'should highlight the error in a mispelled word within a sentence' do 
  expect(sentence_to_check("these words are spnelt")).to eq "these words are ~spnelt~"
 end 

end 