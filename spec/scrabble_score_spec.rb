require ('rspec')
require ('scrabble_score')

describe('String#scrabble_score') do
  it('takes a string and outputs a fixnum based on scrabble letter values') do
    expect("an".scrabble_score()).to(eq(2))
  end

  it('can return scrabble score for word made of any letters') do
    expect("what".scrabble_score()).to(eq(10))
  end

  it('can return scrabble score for long word made of any letters') do
    expect("watermelon".scrabble_score()).to(eq(15))
  end  
end
