#A sh code to calculate the number of vowels in a string of characters      
        #Function count_vowels(stringofcharacters) return string
#initailizing count to zero
        #count<--0
        #assigning vowels letters
        #vowel<--(aeiou)
     #FOR  stringofcharacters<--- 0 to string.lenght - 1
        #if vowel="a"OR "e"OR "i"OR "o"OR "u"
      #/count=+1
        #end if
   # end For
#end function

#!/bin/bash

# Function to count vowels in a string
count_vowels() {
     stringofcharacters="$1"
     count=0

    # Loop through each character in the string
    for char in $(echo "$stringofcharacters" | grep -o .); do
    if [[ "$char" = "a"] || [ "$char" = "e"] || [ "$char" = "i"] || [ "$char" = "o"] || [ "$char" = "u"]] then;
                    ((count++))
        fi
    done

    echo "$count"
}
   echo "input sentence"
  read sentence  
vowel_count=$(count_vowels "input_$sentence")
echo "Number of vowels in '$input_$sentence': $vowel_count"    