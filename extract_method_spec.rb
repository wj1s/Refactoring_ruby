require "extract_method"
describe ExtractMethod do

  it "should_print_right" do
    extractMethod = ExtractMethod.new
    extractMethod.printOwning(1.0).should == 16.2
  end

end
