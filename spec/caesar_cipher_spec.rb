require '../caesar_cipher.rb'

describe "#caesar_cipher" do
  it "returns an unshifted letter" do
    expect(caesar_cipher("a", 0)).to eql("a")
  end

  it "returns an unshifted string of multiple letters" do
    expect(caesar_cipher("abcde", 0)).to eql("abcde")
  end

  it "shifts a letter by 5" do
    expect(caesar_cipher("a", 5)).to eql("f")
  end

  it "shifts a lowercase string by 5" do
    expect(caesar_cipher("abcde", 5)).to eql("fghij")
  end

  it "handles capitalization" do
    expect(caesar_cipher("AbCdE", 5)).to eql("FgHiJ")
  end

  it "handles punctuation" do
    expect(caesar_cipher("a,b,c", 5)).to eql("f,g,h")
  end
end