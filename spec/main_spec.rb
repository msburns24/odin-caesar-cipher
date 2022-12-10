require './lib/main'

describe "caesar_cipher" do

  it "Translates letters as expected" do
    phrase = "a"
    shift = 3
    expect(caesar_cipher(phrase,shift)).to eql("d")
  end

  it "Translates more than one letter" do
    phrase = "programming"
    shift = 3
    expect(caesar_cipher(phrase,shift)).to eql("surjudpplqj")
  end

  it "Wraps around to beginning of alphabet" do
    phrase = "ruby"
    shift = 5
    expect(caesar_cipher(phrase,shift)).to eql("wzgd")
  end

  it "Maintains uppercase/lowercase" do
    phrase = "RuBy"
    shift = 5
    expect(caesar_cipher(phrase,shift)).to eql("WzGd")
  end

  it "Keeps spaces and punctuation" do
    phrase = "Programming Ruby!"
    shift = 3
    expect(caesar_cipher(phrase,shift)).to eql("Surjudpplqj Uxeb!")
  end

end