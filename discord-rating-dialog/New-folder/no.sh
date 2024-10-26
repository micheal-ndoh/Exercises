guessing_number() {
    #we declare a random number and assign it to a variable called random-number
            random_number=$((RANDOM % $1))
            #here we use the for loop to loop through the game
    for i in {0..2}; do
                  if [ $random_number -eq $2  ];
     then
echo "Congratulation, You Won!"
    return 
     elif  [ $random_number -gt $2 ] ;
    then
echo "You missed!  The Number is greater than $2" 
    else 
echo "You missed!  The Number is less than $guest_number"

fi
done
echo "You lose, the number was $random_number"
}