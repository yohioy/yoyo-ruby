#!/usr/bin/ruby -w

def sum_of_deference(arr)

    sortDesArray = arr.sort.reverse
    # --------------------------------
    puts "Array Descending = " + "#{sortDesArray}"
    # --------------------------------

    total = 0

    for i in 0..sortDesArray.length() - 1

        if(i != sortDesArray.length()-1)

            # --------------------------------
            puts "Formula: (#{sortDesArray[i]} - #{sortDesArray[i+1]}) = #{(sortDesArray[i] - sortDesArray[i+1])}"
            # --------------------------------

            subTotal = (sortDesArray[i] - sortDesArray[i+1]) + total
            total = subTotal

        end

    end

    # --------------------------------
    puts "Final Value: " + "#{total}"
    # --------------------------------

end

sum_of_deference [20,1,6,9,7]
