def bubble_sort(arr)
	n = arr.length-1
	count = 0

while count < n
	arr.each do |index, value|
		if arr[index] > arr[index + 1]
			arr[index + 1] = arr[index]
		end
	print arr
	end
	count += 1
end
end