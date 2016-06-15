def add(a,b)
	return a + b
end

def subtract(a,b)
	return (a - b)
end

def sum(array)
	sum = 0.0
	result = 0.0
	if array.length > 0 then
		array.each do |item|
			sum += item
		end
		result = sum
	end
	return result
end

def multiply(*numbers)
	numbers.inject(:*)
end

def power(a, b)
	return a**b
end

def factorial(a)
	if a == 0
		return 1
	else
	a * factorial(a - 1)
	end
end