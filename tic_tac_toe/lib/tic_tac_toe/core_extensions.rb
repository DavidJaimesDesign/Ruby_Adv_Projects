class Array 
	def all_empty?
		self.all? { |element| element.to_s.empty? }
	end

	def all_same?
		self.all? { |element| element == self [0]}
	end

	def any_empty?
		self.any? { |element| element.to_s.empty? }
	end

	def none_empty?
		!any_empty? #does not return false for an empty array but I dont know if we needs it
	end
	
end