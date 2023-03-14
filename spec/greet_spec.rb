require 'greet'

RSpec.describe "greet method" do
    it "return name" do
        result = greet("string")
        expect(greet("name")).to eq("Hello, name!")
    end
end