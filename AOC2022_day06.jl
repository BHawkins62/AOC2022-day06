# Day 6
# written in Julia

# Part One

function unique_chars_in_string(strg, el)
    for char in 1 : (el - 1)
        if occursin(strg[char], strg[(char+1):el]) return false end
    end
    return true
end


open("input.txt") do file
    count = 0
    marker = ""
    ELEMENT = 4
    for readfirst in 1:ELEMENT
        count += 1
        marker *= read(file, Char)
    end
    if unique_chars_in_string(marker, ELEMENT)
        print("characters processed for first marker: $count")
        exit
    else
        while !eof(file)
            marker = marker[2:ELEMENT]
            marker *= read(file, Char)
            count += 1
            if unique_chars_in_string(marker, ELEMENT)
                print("characters processed for first start-of-packet marker: $count")
                break
            end
        end 
    end 
end

# Part Two

# include same function from Part One

open("input.txt") do file
    count = 0
    marker = ""
    ELEMENT = 14
    for readfirst in 1:ELEMENT
        count += 1
        marker *= read(file, Char)
    end
    if unique_chars_in_string(marker, ELEMENT)
        print("characters processed for first marker: $count")
        exit
    else
        while !eof(file)
            marker = marker[2:ELEMENT]
            marker *= read(file, Char)
            count += 1
            if unique_chars_in_string(marker, ELEMENT)
                print("characters processed for first start-of-packet marker: $count")
                break
            end
        end 
    end 
end
