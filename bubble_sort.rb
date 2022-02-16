def bubble_sort(set)

	set.length.times do |i|
		(set.length-i-1).times do |j|
			if set[j]>set[j+1]
				temp = set[j]
				set[j]=set[j+1]
				set[j+1]=temp
			end
		end
	end
	set
end

p bubble_sort([4,2,64,12,65,234,65,0,43,65,32,765,342,65,234,65,2,1,43,6])
	
