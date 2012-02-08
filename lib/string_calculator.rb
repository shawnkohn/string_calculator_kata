# string_calculator.rb

class StringCalculator

	def add(addString)
		sumValue = 0;
		splits = addString.split(/[,\n]/)
		splits.each { |numberString| sumValue += numberString.to_i }
		sumValue
	end

end
