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
    quad = ""
    for readfirst in 1:4
        count += 1
        quad *= read(file, Char)
    end
    if unique_chars_in_string(quad, 4)
        print("characters processed for first marker: $count")
        exit
    else
        while !eof(file)
            quad = quad[2:4]
            quad *= read(file, Char)
            count += 1
            if unique_chars_in_string(quad, 4)
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
    for readfirst in 1:14
        count += 1
        marker *= read(file, Char)
    end
    if unique_chars_in_string(marker, 14)
        print("characters processed for first marker: $count")
        exit
    else
        while !eof(file)
            marker = marker[2:14]
            marker *= read(file, Char)
            count += 1
            if unique_chars_in_string(marker, 14)
                print("characters processed for first start-of-packet marker: $count")
                break
            end
        end 
    end 
end
