require './caesar_cipher.rb'

describe '#caesar_cipher' do
  it 'shifts each letter one to the right' do
    expect(caesar_cipher("hello", 1)).to eql "ifmmp"
  end

  it 'shifts each letter to the specified amount' do
    expect(caesar_cipher("world", 5)).to eql "btwqi"
  end

  it "handles more than one word and spaces" do
    expect(caesar_cipher("hello world", 10)).to eql "rovvy gybvn"
  end

  it "preserves punctuation" do
    expect(caesar_cipher("Hello World!", 3)).to eql "Khoor Zruog!"
  end

  it "works with minus numbers" do
    expect(caesar_cipher("hello World :-)", -3)).to eql "ebiil Tloia :-)"
  end

end