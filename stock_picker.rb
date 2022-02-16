def stock_picker(stock_array)

	#initializing an array for day pairs
	temp_pair_day = []
	
	#getting the difference of current stock and stock on days onwards
	stock_array.each_with_index do |stock, day|
	
		#initializing the first value of days array
		if temp_pair_day.empty?
			temp_pair_day[0] = day
		end
		
		days_onward = stock_array.length-(day)
		
		#comparing the profit if stock is sold for each day onwards
		(days_onward-1).times do |day_onward|
			counter = day+day_onward+1
			profit = stock_array[counter] - stock
			if profit>=0 && temp_pair_day[1] ==nil
				temp_pair_day[1]=counter
			end
			
			#updating the days array if profit is bigger than the previous comparison
			if profit>=0 && profit>(stock_array[temp_pair_day[1]]-stock_array[temp_pair_day[0]])
				temp_pair_day[0]=day
				temp_pair_day[1]=counter
			end
		end
	end
	temp_pair_day
end

