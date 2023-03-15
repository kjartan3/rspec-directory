require "check_codeword"

RSpec.describe "find if input is horse" do
  context "when given 'horse'" do
    it "returns 'Correct! Come in.'" do
        result = check_codeword("horse")
        expect(check_codeword("horse")).to eq ("Correct! Come in.")
    end
  end

  context "when the first character is 'h' and last is 'e''" do
    it "returns 'Close, but nope.'" do
        expect(check_codeword("house")).to eq("Close, but nope.")
        expect(check_codeword("hype")).to eq("Close, but nope.")
        expect(check_codeword("hinge")).to eq("Close, but nope.")
    end
  end
        
  context "when not given 'horse'" do
    it "returns 'WRONG!'" do
        expect(check_codeword("!horse")).to eq ("WRONG!")
    end
  end
end
