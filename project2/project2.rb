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

	def my_each_with_index(&block)
		return enum_for(:my_each_with_index) unless block_given?
		i = 0
		self.my_each do |x|
			yield i, x
			i += 1
		end
		self
	end

	def my_select(&block)
		return enum_for(:my_each_with_index) unless block_given?
		new_arr = []
		self.my_each do |x|
			block = yield x
			if block == true
				new_arr.push(x)
			end 
		end
		new_arr
	end

	def my_all?(&block)
		if block_given?
			self.my_each do |x|
				block = yield x
				if block == false || nil
					return false
					break
				else
					return true
				end
			end
		else
			self.my_each do |x|
				if x == false || nil
					return false
					break
				else
					return true
				end
			end
		end
	end

end

["a", "b", "c", "d"].my_each_with_index{|index, value| print "#{index}: #{value}"}


