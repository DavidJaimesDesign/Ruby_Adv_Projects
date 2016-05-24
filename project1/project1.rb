def bubble_sort(arr)
	n = arr.length-1
	5.times do |index, value|
		if arr[index] > arr[index + 1]
			arr[index + 1] = arr[index]
			arr[index] = arr[index]
		end
	return arr
	end
end
