Sandwich = Struct.new(:taste,:toppings) 
RSpec.describe "An ideal Sandwich" do
  it "is delicious" do
    s1 = Sandwich.new("delicious",[])
    expect(s1.taste).to eq("delicious")
  end
end