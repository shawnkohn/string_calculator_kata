# string_calc_spec.rb

require 'rspec'
require 'string_calculator'

describe StringCalculator do
	describe "#Add" do
		
		before :each do
			@stringCalc = StringCalculator.new
		end
		
		it "should return 0 when empty string is passed" do
			result = @stringCalc.add("")
			result.should == 0
		end

		it "should return 1 when \"1\" is passed" do
			result = @stringCalc.add("1")
			result.should == 1
		end

		it "should return 3 when \"1, 2\" is passed" do
			result = @stringCalc.add("1, 2")
			result.should == 3
		end

		it "should return 30 when \"3, 9, 5, 7, 6\ is passed" do
			result = @stringCalc.add("3, 9, 5, 7, 6")
			result.should == 30
		end

		it "should return 6 when \"1\\n2,3\" is passed" do
			result = @stringCalc.add("1\n2,3")
			result.should == 6
		end

		it "should return 3 when \"\/\/;\\n1;2\" is passed" do
			result = @stringCalc.add("//;\n1;2")
			result.should ==3
		end

	end
end
