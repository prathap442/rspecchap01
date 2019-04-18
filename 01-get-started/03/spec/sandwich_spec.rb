# A Group is  the one that is described using the describe block in the Rspec
# And the examples in the groups are described by usng the keyword it 
# the test casess are also called using key word it
# here we try to created the class called Sandwich using Struct methods
Sandwich = Struct.new(:taste,:toppings)
RSpec.describe "it described the Sandwich behaviour" do 
  it "should be delicious" do 
    s1 = Sandwich.new('delicious',[])
    expect(s1.taste).to eq("delicious")
  end
  it "lets me add toppings " do 
    s1 = Sandwich.new('delicious',[])
    expect(s1.toppings).to be_empty
    s1.toppings << "Cheese"
    expect(s1.toppings).not_to be_empty
  end

  it "let me add toppings"  do 
    s1 = Sandwich.new('delicious',[])
    expect(s1.toppings).to be_empty
    s1.toppings << "Cheese"
    expect(s1.toppings).not_to be_empty
    s1.toppings << "Tomato"
    puts s1.toppings
    expect(s1.toppings).to eq(["Cheese","Tomato"])
  end  
end
