require "report_length"

RSpec.describe "#report_length" do
  it "returns a string containing the length of the input string" do
    expect(report_length("hello")).to eq("This string was 5 characters long.")
    expect(report_length("12345")).to eq("This string was 5 characters long.")
    expect(report_length("This is a longer string.")).to eq("This string was 24 characters long.")
  end
end