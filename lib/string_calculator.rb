# string_calculator.rb

class StringCalculator

	def add(addString)
		sumValue = 0;
		delimiterRegEx = /[,\n]/
		if addString[0, 2] == "//"
			delimiterChar = addString[addString.index("//")+2, addString.index("\n")-(addString.index("//")+2) ]
			delimiterRegEx = /[#{delimiterChar}]/
			addString = addString[addString.index("\n")+1, addString.length-1]
		end
		splits = addString.split(delimiterRegEx)
		splits.each { |numberString| sumValue += numberString.to_i }
		sumValue
	end

end
