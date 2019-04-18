#now we will use the Rspec helper way of dealiing
#the let keyword helps us to make the instances on the fly by using simple pretty syntax
Sandwich = Struct.new(:taste,:toppings)
RSpec.describe "it describes the behaviour of the sandwich" do 
  #let is a keyword that is available not inside the "it" spec blocks but the let is available out of the test cases
  let(:sandwich) { Sandwich.new('delicious', []) }
  it "should be delicious" do
    puts sandwich.object_id#this object id is different from the lower puts object_id
    expect(sandwich.taste).to eq("delicious") 
  end

  it "the sun rises in the east" do 
    puts sandwich.object_id
    expect(1).to eq(1)
  end
end
