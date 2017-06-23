def stock_picker (arr)
  temp = 0
  date_max = 0
  date_min = 0
  for a in 0..arr.length-2
    max = arr[a+1..arr.length-1].max
    min = arr[0..a].min
    if (max - min) > temp
      temp = max - min
      date_max = arr.index(max)
      date_min = arr.index(min)
    end
  end
  puts "[ #{date_min},#{date_max}] for a profit of #{temp}"
end