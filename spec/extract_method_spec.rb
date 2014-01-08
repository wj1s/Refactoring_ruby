require "extract_method"
describe ExtractMethod do
	it "should_print_right" do
		putResult = []
		extractMethod = ExtractMethod.new
		extractMethod.instance_eval do
			define_singleton_method :puts do |message|
				putResult.push message
			end
			define_singleton_method :gets do
				input = getsFixtures[getsCallNumber]
				getsCallNumber = getsCallNumber + 1
				return input
			end
		end
		extractMethod.printOwning(1.0).should == 16.2
		
		putResult.count.should == 15
		putResult[0].should == "*******************"
		putResult[1].should == "*******test********"
		putResult[2].should == "*******************"
		putResult[3].should == "name:foo_display"
		putResult[4].should == "name:foo_display"
		putResult[5].should == "name:foo_display"
		putResult[6].should == "name:foo_display"
		putResult[7].should == "name:foo_display"
		putResult[8].should == "name:foo_display"
		putResult[9].should == "name:foo_display"
		putResult[10].should == "name:foo_display"
		putResult[11].should == "name:foo_display"
		putResult[12].should == "name:foo_display"
		putResult[13].should == "name:foo_display"
		putResult[14].should == "amount:16.2"
	end
end
