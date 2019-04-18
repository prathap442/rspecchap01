Sandwich = Struct.new(:taste,:toppings)
RSpec.describe "it describes all the Taste behaviour" do 
  it "should be delicious" do 
    sandwich = Sandwich.new('delicious',[])
    expect(sandwich.taste).to eq("delicious") 
  end
  it "should be abled to  accept the toppings added to it" do
    sandwich = Sandwich.new('delicious', ["Cheese"])
    expect(sandwich.toppings).to eq(["Cheese"])
  end
end