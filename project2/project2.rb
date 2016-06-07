module Enumerable

	def my_each(&block)
		return enum_for(:my_each) unless block_given?
		self.to_a
		for i in 0...self.length
			yield self[i]
		end
	end
end

[1,2,3,4].my_each{|i| puts i}
#[1,2,3,4].each{|i| print i*2, " "}
