#now we will use the Rspec helper way of dealiing
Sandwich = Struct.new(:taste,:toppings)
RSpec.describe "it describes the behaviour of the sandwich" do 
  #Rspec helpers are used for the describe blocks where the necessity of the instance variables always is not mandatory
  def sandwich #Rspec helper utilization will be of this way
    @sandwich = Sandwich.new('delicious',["Cheese"])
    return @sandwich
  end   
  it "should be delicious" do
    expect(sandwich.taste).to eq("delicious") 
  end

  it "lets me add toppings"
  it "the sun rises in the east" do 
    expect(1).to eq(1)
  end
end