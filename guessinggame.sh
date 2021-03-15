verification(){
if [[ $num -gt $count ]]
then
printf "Your guess is too large... Try again\n"
elif [[ $num -lt $count ]]
then
printf "Your guess is too small...Try again\n"
else 
printf "Congratulations!!! you guess the right number of files in the directory\n"
exit 0
fi
}

while true
do
count=$(ls -l | wc -l)
printf "\nPlease enter how many files you think the directory contains?\n"
read num
verification
done
