#!/usr/bin/ruby -w

def to_camel_case(str)

# To do this, we create an object with string replacement values for - and _ values
map = {"-" => " ", "_" => " "}

# Find and replace all the - and _ with a white space
# We do this to make the input `str` value consistent
map.each {|replace| str.gsub!(replace[0], replace[1])}

# At this point, the input string will have spaces instead of - and _
# --------------------------------
puts "String with spaces = " + str
# --------------------------------

# Get the first letter of the string
firstCharacter = str[0]
# --------------------------------
puts "First Character = " + firstCharacter
# --------------------------------

isFirstLetterCapital = false
# Check if the first character is an uppercase character
if ("A".."Z").include?(firstCharacter)
    isFirstLetterCapital = true
end
# --------------------------------
puts "First letter is capital = " +  "#{isFirstLetterCapital}"
# --------------------------------

# Convert the str into an array. Each element in the array
chunk = str.split(" ")
# --------------------------------
puts "Array list = " + "#{chunk}"
# --------------------------------


for i in 0..chunk.length()-1
    if (i === 0)
        finalString = chunk[i]
        if (isFirstLetterCapital)
            finalString = chunk[i].capitalize
        end
    else
        finalString.concat(chunk[i].capitalize)
    end
end
return finalString
end

puts to_camel_case "Hello-world-peter"
