module Enumerable

	def my_each(&block)
		return enum_for(:my_each) unless block_given?
			if self.class == Range
				self.to_a
				n = self.length
				for n do |i|
					value = yield i
					return i 
				end
			else 
				self.to_a
				n = self.length
				for n do |i|
					value = yield i
					return i
				end
			end
	end

	def my_each_with_index
	end

	def my_select
	end

	def my_all
	end

	def my_any?
	end

	def my_none
	end

	def my_count
	end

	def my_map
	end

	def my_inject
	end

	def multiply_els
	end
end

