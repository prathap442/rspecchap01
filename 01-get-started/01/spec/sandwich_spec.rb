#here describe is  a block that tells that there are certain set of the examples that need to be included
#initially we get the Sandwich class undefined error becuase it doesnot know what is the sandwich class and how to define it 
class Sandwich
  def taste
    return "delicious" 
  end 
end
RSpec.describe "An ideal Sandwich" do 
  it "should taste delicious" do
    sandwich = Sandwich.new
    expect(sandwich.taste).to eq("delicious")
  end

  it "should not taste delicious" do 
    sandwich = Sandwich.new
    expect(sandwich.taste).not_to eq("sour")
  end

#   it "should not be delicoious if its is sour" do 
#     sandwich = Sandwich.new
#     expect(sandwich.taste).not_eql "sour"
#   end
end