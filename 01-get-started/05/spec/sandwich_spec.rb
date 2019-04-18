Sandwich = Struct.new(:taste,:toppings)
RSpec.describe "An ideal Sandwich" do 
  before {@sandwich = Sandwich.new('delicious',["Cheese","Tomato"])}  
  #so here before is a Rspec Hook that gets called every time before going to the "it" block or the test case 
  # we can prove that the object ids are different for the different test cases
  #Hooks are great for running common setup code that has real-world side effects. If you need to clear out a test database before each example, a hook is a great place to do so. 
  #They also work fine for stashing your test objects in instance variables, as we’ve done here. However, instance variables have a few drawbacks.
    
  it "is delicious" do 
    puts @sandwich.object_id
    expect(@sandwich.taste).to eq("delicious")
  end

  it "has the facility to allow the toppings to be added " do 
    puts @sandwich.object_id
    expect(@sandwich.toppings).to eq(["Cheese","Tomato"])
  end

end