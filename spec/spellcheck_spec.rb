require 'spellcheck'

describe 'highlight teh error in a spelt word' do 
 it 'should highlight the error in a mispelled word' do 
  expect(sentence_to_check("spnelt")).to eq "~spnelt~"
 end

#  it 'should highlight the error in a mispelled word within a sentence' do 
#   expect(sentence_to_check("These words are spnelt")).to eq "These words are ~spnelt~"
#  end 

end 