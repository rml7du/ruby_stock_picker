def stock_picker(array)
    i=0
    y=0
    buy = 0
    sell = 0
    spread = 0
    until i == array.length
        until y == array.length
            if array[y] - array[i] > spread
                spread = array[y] - array[i]
                buy = i
                sell = y
                puts buy
                puts sell
            end
            y+=1
        end
        i+=1
    end
    puts "buy: #{buy} and sell: #{sell}"
end


def stock_picker(array)
    spread = 0
    buy = 0
    sell = 0 
    x = 0 
    array.each_with_index do |val, i|
        array.each_with_index do |val2, i2|
            #puts "val #{val} + val2 #{val2}"
            if i2>i && val2 - val > spread
                spread = val2 - val
                buy = i
                #puts "updated buy #{buy}"
                sell = i2 
                #puts "updated sell #{sell}"
            end
        end
    end
    puts "buy at #{array[buy]} and sell at  #{array[sell]}"
end



puts stock_picker([17,3,6,9,15,8,6,1,10])

puts stock_picker([17,3,6,9,15,8,6,5,1,25])