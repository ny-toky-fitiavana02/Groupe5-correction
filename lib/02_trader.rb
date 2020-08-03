def day_trader(tab)
  hash = {}
  b=tab.length
  tab.each_with_index{|x,i| 
    a=1
    while a < b-i
      hash[[i, i+a]] = (tab[i+a])-x
      a += 1
    end
  }
  return hash.sort_by { |id,value|-value}[0][0]
end

puts day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])

