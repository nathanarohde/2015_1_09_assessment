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
  it("program checks to see how many times the second input string is found in the first input string(after it has been converted into an array) and outputs the result") do
    expect(("string string string different words not_string").frequency("string")).to eq(3)
  end
end

describe("String#frequency") do
  it("program purges non alphanumeric characters from strings contained in the array") do
    expect(("string string string str@ing different words not_string string!").frequency("string")).to eq(5)
  end
end
