require ('rspec')
require ('frequency')

# describe("String#frequency") do
#   it("program takes the input of a single string") do
#     expect(("string").frequency("string2")).to eq("string")
#   end
# end

# describe("String#frequency") do
#   it("program converts input into an array of strings") do
#     expect(("string").frequency("string2")).to eq(["s","t","r","i","n","g"])
#   end
# end

describe("String#frequency") do
  it("program checks to see how many times the second input variable is found in the first input variable and outputs the result") do
    expect(("string string string different words not_string").frequency("string")).to eq(3)
  end
end
