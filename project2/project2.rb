module Enumerable

	def my_each(&block)
		return enum_for(:my_each) unless block_given?
		i = 0
		while i < self.length
			yield self[i]
			i += 1
		end
		self
	end

end

#[1,2,3,4].my_each{|i| puts i*2}

[1,2,3,4].each
